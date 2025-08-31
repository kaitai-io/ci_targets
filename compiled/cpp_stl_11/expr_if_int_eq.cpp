// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_if_int_eq.h"

expr_if_int_eq_t::expr_if_int_eq_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_if_int_eq_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_calc = false;
    f_calc_eq_calc_if = false;
    f_calc_eq_lit = false;
    f_calc_eq_seq_if = false;
    f_calc_if = false;
    f_calc_if_eq_lit = false;
    f_calc_if_eq_seq_if = false;
    f_seq_eq_calc = false;
    f_seq_eq_calc_if = false;
    f_seq_eq_lit = false;
    f_seq_eq_seq_if = false;
    f_seq_if_eq_lit = false;
    _read();
}

void expr_if_int_eq_t::_read() {
    m_skip = m__io->read_bytes(2);
    m_seq = m__io->read_s2le();
    n_seq_if = true;
    if (true) {
        n_seq_if = false;
        m_seq_if = m__io->read_s2le();
    }
}

expr_if_int_eq_t::~expr_if_int_eq_t() {
    _clean_up();
}

void expr_if_int_eq_t::_clean_up() {
    if (!n_seq_if) {
    }
}

int32_t expr_if_int_eq_t::calc() {
    if (f_calc)
        return m_calc;
    f_calc = true;
    m_calc = 16705;
    return m_calc;
}

bool expr_if_int_eq_t::calc_eq_calc_if() {
    if (f_calc_eq_calc_if)
        return m_calc_eq_calc_if;
    f_calc_eq_calc_if = true;
    m_calc_eq_calc_if = calc() == calc_if();
    return m_calc_eq_calc_if;
}

bool expr_if_int_eq_t::calc_eq_lit() {
    if (f_calc_eq_lit)
        return m_calc_eq_lit;
    f_calc_eq_lit = true;
    m_calc_eq_lit = calc() == 16705;
    return m_calc_eq_lit;
}

bool expr_if_int_eq_t::calc_eq_seq_if() {
    if (f_calc_eq_seq_if)
        return m_calc_eq_seq_if;
    f_calc_eq_seq_if = true;
    m_calc_eq_seq_if = calc() == seq_if();
    return m_calc_eq_seq_if;
}

int32_t expr_if_int_eq_t::calc_if() {
    if (f_calc_if)
        return m_calc_if;
    f_calc_if = true;
    n_calc_if = true;
    if (true) {
        n_calc_if = false;
        m_calc_if = 16705;
    }
    return m_calc_if;
}

bool expr_if_int_eq_t::calc_if_eq_lit() {
    if (f_calc_if_eq_lit)
        return m_calc_if_eq_lit;
    f_calc_if_eq_lit = true;
    m_calc_if_eq_lit = calc_if() == 16705;
    return m_calc_if_eq_lit;
}

bool expr_if_int_eq_t::calc_if_eq_seq_if() {
    if (f_calc_if_eq_seq_if)
        return m_calc_if_eq_seq_if;
    f_calc_if_eq_seq_if = true;
    m_calc_if_eq_seq_if = calc_if() == seq_if();
    return m_calc_if_eq_seq_if;
}

bool expr_if_int_eq_t::seq_eq_calc() {
    if (f_seq_eq_calc)
        return m_seq_eq_calc;
    f_seq_eq_calc = true;
    m_seq_eq_calc = seq() == calc();
    return m_seq_eq_calc;
}

bool expr_if_int_eq_t::seq_eq_calc_if() {
    if (f_seq_eq_calc_if)
        return m_seq_eq_calc_if;
    f_seq_eq_calc_if = true;
    m_seq_eq_calc_if = seq() == calc_if();
    return m_seq_eq_calc_if;
}

bool expr_if_int_eq_t::seq_eq_lit() {
    if (f_seq_eq_lit)
        return m_seq_eq_lit;
    f_seq_eq_lit = true;
    m_seq_eq_lit = seq() == 16705;
    return m_seq_eq_lit;
}

bool expr_if_int_eq_t::seq_eq_seq_if() {
    if (f_seq_eq_seq_if)
        return m_seq_eq_seq_if;
    f_seq_eq_seq_if = true;
    m_seq_eq_seq_if = seq() == seq_if();
    return m_seq_eq_seq_if;
}

bool expr_if_int_eq_t::seq_if_eq_lit() {
    if (f_seq_if_eq_lit)
        return m_seq_if_eq_lit;
    f_seq_if_eq_lit = true;
    m_seq_if_eq_lit = seq_if() == 16705;
    return m_seq_if_eq_lit;
}
