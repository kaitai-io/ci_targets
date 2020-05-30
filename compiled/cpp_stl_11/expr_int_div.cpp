// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "expr_int_div.h"

expr_int_div_t::expr_int_div_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_int_div_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_div_pos_const = false;
    f_div_neg_const = false;
    f_div_pos_seq = false;
    f_div_neg_seq = false;
    _read();
}

void expr_int_div_t::_read() {
    m_int_u = m__io->read_u4le();
    m_int_s = m__io->read_s4le();
}

expr_int_div_t::~expr_int_div_t() {
}

int32_t expr_int_div_t::div_pos_const() {
    if (f_div_pos_const)
        return m_div_pos_const;
    m_div_pos_const = (9837 / 13);
    f_div_pos_const = true;
    return m_div_pos_const;
}

int32_t expr_int_div_t::div_neg_const() {
    if (f_div_neg_const)
        return m_div_neg_const;
    m_div_neg_const = (-9837 / 13);
    f_div_neg_const = true;
    return m_div_neg_const;
}

int32_t expr_int_div_t::div_pos_seq() {
    if (f_div_pos_seq)
        return m_div_pos_seq;
    m_div_pos_seq = (int_u() / 13);
    f_div_pos_seq = true;
    return m_div_pos_seq;
}

int32_t expr_int_div_t::div_neg_seq() {
    if (f_div_neg_seq)
        return m_div_neg_seq;
    m_div_neg_seq = (int_s() / 13);
    f_div_neg_seq = true;
    return m_div_neg_seq;
}
