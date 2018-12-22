// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "imports_rel_1.h"

#include <memory>
#include "imported_1.h"

imports_rel_1_t::imports_rel_1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, imports_rel_1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_two = nullptr;
    _read();
}

void imports_rel_1_t::_read() {
    m_one = m__io->read_u1();
    m_two = std::make_unique<imported_1_t>(m__io);
}

imports_rel_1_t::~imports_rel_1_t() {
}
