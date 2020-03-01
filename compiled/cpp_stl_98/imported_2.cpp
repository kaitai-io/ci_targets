// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "imported_2.h"

imported2_t::imported2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, imported2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void imported2_t::_read() {
    m_one = m__io->read_u1();
}

imported2_t::~imported2_t() {
}
