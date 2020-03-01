// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "imported_and_abs.h"
#include "imported_root.h"

importedAndAbs_t::importedAndAbs_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, importedAndAbs_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_two = 0;
    _read();
}

void importedAndAbs_t::_read() {
    m_one = m__io->read_u1();
    m_two = new importedRoot_t(m__io);
}

importedAndAbs_t::~importedAndAbs_t() {
    delete m_two;
}
