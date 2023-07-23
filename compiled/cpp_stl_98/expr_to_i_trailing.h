#ifndef EXPR_TO_I_TRAILING_H_
#define EXPR_TO_I_TRAILING_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class expr_to_i_trailing_t : public kaitai::kstruct {

public:

    expr_to_i_trailing_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, expr_to_i_trailing_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~expr_to_i_trailing_t();

private:
    bool f_to_i_r10;
    int32_t m_to_i_r10;

public:
    int32_t to_i_r10();

private:
    bool f_to_i_r13;
    int32_t m_to_i_r13;

public:
    int32_t to_i_r13();

private:
    bool f_to_i_garbage;
    int32_t m_to_i_garbage;

public:
    int32_t to_i_garbage();

private:
    expr_to_i_trailing_t* m__root;
    kaitai::kstruct* m__parent;

public:
    expr_to_i_trailing_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // EXPR_TO_I_TRAILING_H_
