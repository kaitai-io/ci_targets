// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "imported_and_abs.h"
#include "imported_root.h"

imported_and_abs_t::imported_and_abs_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, imported_and_abs_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_two = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void imported_and_abs_t::_read() {
    m_one = m__io->read_u1();
    m_two = new imported_root_t(m__io);
}

imported_and_abs_t::~imported_and_abs_t() {
    _clean_up();
}

void imported_and_abs_t::_clean_up() {
    if (m_two) {
        delete m_two; m_two = 0;
    }
}
