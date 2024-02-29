// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_mod.h"

expr_mod_t::expr_mod_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_mod_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_mod_neg_const = false;
    f_mod_neg_seq = false;
    f_mod_pos_const = false;
    f_mod_pos_seq = false;
    _read();
}

void expr_mod_t::_read() {
    m_int_u = m__io->read_u4le();
    m_int_s = m__io->read_s4le();
}

expr_mod_t::~expr_mod_t() {
    _clean_up();
}

void expr_mod_t::_clean_up() {
}

int32_t expr_mod_t::mod_neg_const() {
    if (f_mod_neg_const)
        return m_mod_neg_const;
    m_mod_neg_const = kaitai::kstream::mod(-9837, 13);
    f_mod_neg_const = true;
    return m_mod_neg_const;
}

int32_t expr_mod_t::mod_neg_seq() {
    if (f_mod_neg_seq)
        return m_mod_neg_seq;
    m_mod_neg_seq = kaitai::kstream::mod(int_s(), 13);
    f_mod_neg_seq = true;
    return m_mod_neg_seq;
}

int32_t expr_mod_t::mod_pos_const() {
    if (f_mod_pos_const)
        return m_mod_pos_const;
    m_mod_pos_const = kaitai::kstream::mod(9837, 13);
    f_mod_pos_const = true;
    return m_mod_pos_const;
}

int32_t expr_mod_t::mod_pos_seq() {
    if (f_mod_pos_seq)
        return m_mod_pos_seq;
    m_mod_pos_seq = kaitai::kstream::mod(int_u(), 13);
    f_mod_pos_seq = true;
    return m_mod_pos_seq;
}
