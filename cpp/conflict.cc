#include <stddef.h>
#include <stdio.h>
#include <cstdlib>

extern "C" {
    int* arr() {
        int* arr_ = (int*) malloc(sizeof(int));
        arr_[0] = 1;
        return arr_;
    }

    int my_index(size_t idx, int* ptr) {
        printf("my_index\n");
        return ptr[idx];
    }

    int index(size_t idx, int* ptr) {
        printf("index\n");
        return ptr[idx];
    }
}
