#pragma once

typedef int (*initcall_t)(void);
#define module_init(fn)                      \
    static initcall_t __initcall_##fn __used \
        __attribute__((__section__(".initcall.init"))) = fn

extern initcall_t __initcall_start[];