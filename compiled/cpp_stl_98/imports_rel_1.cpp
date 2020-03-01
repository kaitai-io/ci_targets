// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "imports_rel_1.h"
#include "imported_1.h"

importsRel1_t::importsRel1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, importsRel1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_two = 0;
    _read();
}

void importsRel1_t::_read() {
    m_one = m__io->read_u1();
    m_two = new imported1_t(m__io);
}

importsRel1_t::~importsRel1_t() {
    delete m_two;
}
