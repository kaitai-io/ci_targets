// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "term_u1_val.h"

term_u1_val_t::term_u1_val_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, term_u1_val_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void term_u1_val_t::_read() {
    m_foo = m__io->read_bytes_term(227, false, false, true);
    m_bar = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(171, true, true, true), "UTF-8");
}

term_u1_val_t::~term_u1_val_t() {
    _clean_up();
}

void term_u1_val_t::_clean_up() {
}
