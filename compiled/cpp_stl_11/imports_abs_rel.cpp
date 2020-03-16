// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "imports_abs_rel.h"
#include "imported_and_rel.h"

imports_abs_rel_t::imports_abs_rel_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, imports_abs_rel_t* /* p__root */) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_two = nullptr;
    _read();
}

void imports_abs_rel_t::_read() {
    m_one = m__io->read_u1();
    m_two = std::unique_ptr<imported_and_rel_t>(new imported_and_rel_t(m__io));
}

imports_abs_rel_t::~imports_abs_rel_t() {
}
