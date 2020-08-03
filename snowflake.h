//
// Created by nbboy on 2020/7/31.
//

#ifndef XFTEST_SNOWFLAKE_H
#define XFTEST_SNOWFLAKE_H

#include <sys/time.h>
#include <pthread.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef __int64_t i64;

typedef struct Snowflake_T {
    /*数据中心编号*/
    int data_center_id;

    /*节点编号*/
    int worker_id;

    /*上一次记录的时间戳*/
    i64 timestamp;

    pthread_mutex_t mutex;

    int number;

    struct Stat_T {
        i64 count;

        int beyond;
    } stat;
} Snowflake;

typedef Snowflake *SF;

SF Sf_create(int data_center_id, int worker_id);

i64 Sf_generateId(SF sf);

int Sf_generateIds(SF sf, i64 ids[], int num);

void Sf_destroy(SF *sfp);

#ifdef __cplusplus
}
#endif
#endif //XFTEST_SNOWFLAKE_H
