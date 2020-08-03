//
// Created by nbboy on 2020/7/31.
//
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <assert.h>
#include <errno.h>
#include <unistd.h>
#include "snowflake.h"

#define NUMBER_BITS 12
#define DATA_CENTER_BITS 5
#define WORKER_BITS 5
#define IDENTITY_BITS (DATA_CENTER_BITS + WORKER_BITS)
#define TIMESTAMP_SHIFT (NUMBER_BITS + IDENTITY_BITS)
#define DATA_CENTER_SHIFT (NUMBER_BITS + WORKER_BITS)
#define WORKER_SHIFT NUMBER_BITS

static int max_number = -1 ^(-1 << NUMBER_BITS);

static int max_worker = -1 ^(-1 << WORKER_BITS);

SF Sf_create(int data_center_id, int worker_id) {
    if (data_center_id > max_worker || worker_id > max_worker) {
        return NULL;
    }

    SF sf = malloc(sizeof(SF));
    sf->data_center_id = data_center_id;
    sf->worker_id = worker_id;
    sf->timestamp = sf->stat.count = sf->stat.beyond = sf->number = 0;
    if (pthread_mutex_init(&sf->mutex, NULL)) {
        free(sf);
        return NULL;
    }
    return sf;
}

void Sf_destroy(SF *sfp) {
    SF sf = *sfp;

    assert(sf);

    int destroy_state;
    while (0 != (destroy_state=pthread_mutex_destroy(&sf->mutex))){
        if (destroy_state == EINVAL) {
            fprintf(stderr, "mutex state invalid");
            assert(0);
        }

        if (destroy_state == EBUSY){
            sleep(1);
        }
    }

    free(sf);
    *sfp = NULL;
}

i64 Sf_generateId(SF sf) {
    struct timeval tv;

    assert(sf);

    if(pthread_mutex_lock(&sf->mutex)){
        fprintf(stderr, "mutex state invalid");
        assert(0);
    }

    gettimeofday(&tv, NULL);
    i64 sec = tv.tv_sec * 1000 + tv.tv_usec / 1000;

    if (sec == sf->timestamp) {
        if (sf->number > max_number) {
            for (; sec <= sf->timestamp;) {
                gettimeofday(&tv, NULL);
                sec = tv.tv_sec * 1000 + tv.tv_usec / 1000;
            }
        }
        sf->number++;
    } else {
        sf->timestamp = sec;
        sf->number = 0;
    }
    i64 ticket = sec << TIMESTAMP_SHIFT | sf->data_center_id << DATA_CENTER_SHIFT | sf->worker_id << WORKER_SHIFT |
                 sf->number;
    pthread_mutex_unlock(&sf->mutex);//忽略错误值
//    printf("sec:%lld, data_center_id:%d, worker_id:%d, number:%d\r\n", sec, sf->data_center_id, sf->worker_id,
//           sf->number);
//    printf("sec shift:%d, data_center shift:%d, worker shift:%d\r\n", TIMESTAMP_SHIFT, DATA_CENTER_SHIFT,
//           WORKER_SHIFT);
    return ticket;
}

int Sf_generateIds(SF sf, i64 ids[], int num) {
    assert(sf);
    for (int i = 0; i < num; ++i) {
        ids[i] = Sf_generateId(sf);
    }

    return 1;
}
