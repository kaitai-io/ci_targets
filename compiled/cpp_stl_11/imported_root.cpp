// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "imported_root.h"

importedRoot_t::importedRoot_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, importedRoot_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void importedRoot_t::_read() {
    m_one = m__io->read_u1();
}

importedRoot_t::~importedRoot_t() {
}
