// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_to_i_trailing.h"

expr_to_i_trailing_t::expr_to_i_trailing_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_to_i_trailing_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_to_i_garbage = false;
    f_to_i_r10 = false;
    f_to_i_r16 = false;
    _read();
}

void expr_to_i_trailing_t::_read() {
}

expr_to_i_trailing_t::~expr_to_i_trailing_t() {
    _clean_up();
}

void expr_to_i_trailing_t::_clean_up() {
}

int32_t expr_to_i_trailing_t::to_i_garbage() {
    if (f_to_i_garbage)
        return m_to_i_garbage;
    f_to_i_garbage = true;
    m_to_i_garbage = kaitai::kstream::string_to_int(std::string("123_.^"));
    return m_to_i_garbage;
}

int32_t expr_to_i_trailing_t::to_i_r10() {
    if (f_to_i_r10)
        return m_to_i_r10;
    f_to_i_r10 = true;
    m_to_i_r10 = kaitai::kstream::string_to_int(std::string("9173abc"));
    return m_to_i_r10;
}

int32_t expr_to_i_trailing_t::to_i_r16() {
    if (f_to_i_r16)
        return m_to_i_r16;
    f_to_i_r16 = true;
    m_to_i_r16 = kaitai::kstream::string_to_int(std::string("9173abc"), 16);
    return m_to_i_r16;
}
