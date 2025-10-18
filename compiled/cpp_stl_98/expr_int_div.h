#ifndef EXPR_INT_DIV_H_
#define EXPR_INT_DIV_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class expr_int_div_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class expr_int_div_t : public kaitai::kstruct {

public:

    expr_int_div_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, expr_int_div_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~expr_int_div_t();
    int32_t div_neg_const();
    int32_t div_neg_seq();
    int32_t div_pos_const();
    int32_t div_pos_seq();
    uint32_t int_u() const { return m_int_u; }
    int32_t int_s() const { return m_int_s; }
    expr_int_div_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_div_neg_const;
    int32_t m_div_neg_const;
    bool f_div_neg_seq;
    int32_t m_div_neg_seq;
    bool f_div_pos_const;
    int32_t m_div_pos_const;
    bool f_div_pos_seq;
    int32_t m_div_pos_seq;
    uint32_t m_int_u;
    int32_t m_int_s;
    expr_int_div_t* m__root;
    kaitai::kstruct* m__parent;
};

#endif  // EXPR_INT_DIV_H_
