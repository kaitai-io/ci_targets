// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "imports_abs_abs.h"
#include "imported_and_abs.h"

importsAbsAbs_t::importsAbsAbs_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, importsAbsAbs_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_two = nullptr;
    _read();
}

void importsAbsAbs_t::_read() {
    m_one = m__io->read_u1();
    m_two = std::unique_ptr<importedAndAbs_t>(new importedAndAbs_t(m__io));
}

importsAbsAbs_t::~importsAbsAbs_t() {
}
