#include <stdio.h>
#include "snowflake.h"

int main() {
    SF sf = Sf_create(1, 1);
    i64 id = Sf_generateId(sf);
    printf("snowflake ID:%lld\r\n", id);
}
