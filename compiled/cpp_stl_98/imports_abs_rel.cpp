// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "imports_abs_rel.h"
#include "imported_and_rel.h"

importsAbsRel_t::importsAbsRel_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, importsAbsRel_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_two = 0;
    _read();
}

void importsAbsRel_t::_read() {
    m_one = m__io->read_u1();
    m_two = new importedAndRel_t(m__io);
}

importsAbsRel_t::~importsAbsRel_t() {
    delete m_two;
}
