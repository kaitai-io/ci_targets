// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_0.h"

expr_0_t::expr_0_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_0_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_must_be_abc123 = false;
    f_must_be_f7 = false;
    _read();
}

void expr_0_t::_read() {
    m_len_of_1 = m__io->read_u2le();
}

expr_0_t::~expr_0_t() {
    _clean_up();
}

void expr_0_t::_clean_up() {
}

std::string expr_0_t::must_be_abc123() {
    if (f_must_be_abc123)
        return m_must_be_abc123;
    m_must_be_abc123 = std::string("abc") + std::string("123");
    f_must_be_abc123 = true;
    return m_must_be_abc123;
}

int32_t expr_0_t::must_be_f7() {
    if (f_must_be_f7)
        return m_must_be_f7;
    m_must_be_f7 = (7 + 240);
    f_must_be_f7 = true;
    return m_must_be_f7;
}
