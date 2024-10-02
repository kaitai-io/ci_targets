// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_bytes_non_literal.h"

expr_bytes_non_literal_t::expr_bytes_non_literal_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_bytes_non_literal_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_calc_bytes = false;
    _read();
}

void expr_bytes_non_literal_t::_read() {
    m_one = m__io->read_u1();
    m_two = m__io->read_u1();
}

expr_bytes_non_literal_t::~expr_bytes_non_literal_t() {
    _clean_up();
}

void expr_bytes_non_literal_t::_clean_up() {
}

std::string expr_bytes_non_literal_t::calc_bytes() {
    if (f_calc_bytes)
        return m_calc_bytes;
    f_calc_bytes = true;
    m_calc_bytes = std::string({static_cast<char>(one()), static_cast<char>(two())});
    return m_calc_bytes;
}
