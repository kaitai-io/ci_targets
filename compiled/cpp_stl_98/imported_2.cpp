// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "imported_2.h"

imported_2_t::imported_2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, imported_2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void imported_2_t::_read() {
    m_one = m__io->read_u1();
}

imported_2_t::~imported_2_t() {
    _clean_up();
}

void imported_2_t::_clean_up() {
}
