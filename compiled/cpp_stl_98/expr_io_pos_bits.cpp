// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_io_pos_bits.h"

expr_io_pos_bits_t::expr_io_pos_bits_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_io_pos_bits_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void expr_io_pos_bits_t::_read() {
    m_foo = m__io->read_bits_int_be(3);
    n_bar = true;
    if (_io()->pos() == 1) {
        n_bar = false;
        m_bar = m__io->read_bits_int_be(5);
    }
    n_baz = true;
    if (_io()->pos() == 1) {
        n_baz = false;
        m_baz = m__io->read_bits_int_be(1);
    }
    n_qux = true;
    if (_io()->pos() == 2) {
        n_qux = false;
        m_qux = m__io->read_bits_int_be(7);
    }
}

expr_io_pos_bits_t::~expr_io_pos_bits_t() {
    _clean_up();
}

void expr_io_pos_bits_t::_clean_up() {
    if (!n_bar) {
    }
    if (!n_baz) {
    }
    if (!n_qux) {
    }
}
