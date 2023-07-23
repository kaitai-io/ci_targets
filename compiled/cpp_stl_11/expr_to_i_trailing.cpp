// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_to_i_trailing.h"

expr_to_i_trailing_t::expr_to_i_trailing_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_to_i_trailing_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_to_i_r10 = false;
    f_to_i_r13 = false;
    f_to_i_garbage = false;
    _read();
}

void expr_to_i_trailing_t::_read() {
}

expr_to_i_trailing_t::~expr_to_i_trailing_t() {
    _clean_up();
}

void expr_to_i_trailing_t::_clean_up() {
}

int32_t expr_to_i_trailing_t::to_i_r10() {
    if (f_to_i_r10)
        return m_to_i_r10;
    m_to_i_r10 = std::stoi(std::string("9173abc"));
    f_to_i_r10 = true;
    return m_to_i_r10;
}

int32_t expr_to_i_trailing_t::to_i_r13() {
    if (f_to_i_r13)
        return m_to_i_r13;
    m_to_i_r13 = std::stoi(std::string("9173abc"), 0, 13);
    f_to_i_r13 = true;
    return m_to_i_r13;
}

int32_t expr_to_i_trailing_t::to_i_garbage() {
    if (f_to_i_garbage)
        return m_to_i_garbage;
    m_to_i_garbage = std::stoi(std::string("123_.^"));
    f_to_i_garbage = true;
    return m_to_i_garbage;
}
