#ifndef EXPR_IF_INT_EQ_H_
#define EXPR_IF_INT_EQ_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class expr_if_int_eq_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class expr_if_int_eq_t : public kaitai::kstruct {

public:

    expr_if_int_eq_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, expr_if_int_eq_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~expr_if_int_eq_t();
    int32_t calc();
    bool calc_eq_calc_if();
    bool calc_eq_lit();
    bool calc_eq_seq_if();
    int32_t calc_if();
    bool calc_if_eq_lit();
    bool calc_if_eq_seq_if();
    bool seq_eq_calc();
    bool seq_eq_calc_if();
    bool seq_eq_lit();
    bool seq_eq_seq_if();
    bool seq_if_eq_lit();
    std::string skip() const { return m_skip; }
    int16_t seq() const { return m_seq; }
    int16_t seq_if() const { return m_seq_if; }
    expr_if_int_eq_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_calc;
    int32_t m_calc;
    bool f_calc_eq_calc_if;
    bool m_calc_eq_calc_if;
    bool f_calc_eq_lit;
    bool m_calc_eq_lit;
    bool f_calc_eq_seq_if;
    bool m_calc_eq_seq_if;
    bool f_calc_if;
    int32_t m_calc_if;
    bool n_calc_if;

public:
    bool _is_null_calc_if() { calc_if(); return n_calc_if; };

private:
    bool f_calc_if_eq_lit;
    bool m_calc_if_eq_lit;
    bool f_calc_if_eq_seq_if;
    bool m_calc_if_eq_seq_if;
    bool f_seq_eq_calc;
    bool m_seq_eq_calc;
    bool f_seq_eq_calc_if;
    bool m_seq_eq_calc_if;
    bool f_seq_eq_lit;
    bool m_seq_eq_lit;
    bool f_seq_eq_seq_if;
    bool m_seq_eq_seq_if;
    bool f_seq_if_eq_lit;
    bool m_seq_if_eq_lit;
    std::string m_skip;
    int16_t m_seq;
    int16_t m_seq_if;
    bool n_seq_if;

public:
    bool _is_null_seq_if() { seq_if(); return n_seq_if; };

private:
    expr_if_int_eq_t* m__root;
    kaitai::kstruct* m__parent;
};

#endif  // EXPR_IF_INT_EQ_H_
