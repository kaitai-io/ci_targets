// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_if_int_ops.h"

expr_if_int_ops_t::expr_if_int_ops_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_if_int_ops_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_is_eq_boxed = false;
    f_is_eq_prim = false;
    _read();
}

void expr_if_int_ops_t::_read() {
    m_skip = m__io->read_bytes(2);
    n_it = true;
    if (true) {
        n_it = false;
        m_it = m__io->read_s2le();
    }
    n_boxed = true;
    if (true) {
        n_boxed = false;
        m_boxed = m__io->read_s2le();
    }
}

expr_if_int_ops_t::~expr_if_int_ops_t() {
    _clean_up();
}

void expr_if_int_ops_t::_clean_up() {
    if (!n_it) {
    }
    if (!n_boxed) {
    }
}

bool expr_if_int_ops_t::is_eq_boxed() {
    if (f_is_eq_boxed)
        return m_is_eq_boxed;
    m_is_eq_boxed = it() == boxed();
    f_is_eq_boxed = true;
    return m_is_eq_boxed;
}

bool expr_if_int_ops_t::is_eq_prim() {
    if (f_is_eq_prim)
        return m_is_eq_prim;
    m_is_eq_prim = it() == 16705;
    f_is_eq_prim = true;
    return m_is_eq_prim;
}
