// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "imported_1.h"

imported_1_t::imported_1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, imported_1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_two = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void imported_1_t::_read() {
    m_one = m__io->read_u1();
    m_two = new imported_2_t(m__io);
}

imported_1_t::~imported_1_t() {
    _clean_up();
}

void imported_1_t::_clean_up() {
    if (m_two) {
        delete m_two; m_two = 0;
    }
}
