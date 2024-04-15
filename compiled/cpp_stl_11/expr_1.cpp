// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_1.h"

expr_1_t::expr_1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_len_of_1_mod = false;
    f_str1_len = false;
    _read();
}

void expr_1_t::_read() {
    m_len_of_1 = m__io->read_u2le();
    m_str1 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_1_mod()), "ASCII");
}

expr_1_t::~expr_1_t() {
    _clean_up();
}

void expr_1_t::_clean_up() {
}

int32_t expr_1_t::len_of_1_mod() {
    if (f_len_of_1_mod)
        return m_len_of_1_mod;
    m_len_of_1_mod = len_of_1() - 2;
    f_len_of_1_mod = true;
    return m_len_of_1_mod;
}

int32_t expr_1_t::str1_len() {
    if (f_str1_len)
        return m_str1_len;
    m_str1_len = str1().length();
    f_str1_len = true;
    return m_str1_len;
}
