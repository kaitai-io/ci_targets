// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "imported_and_rel.h"
#include "imported_root.h"

importedAndRel_t::importedAndRel_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, importedAndRel_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_two = nullptr;
    _read();
}

void importedAndRel_t::_read() {
    m_one = m__io->read_u1();
    m_two = std::unique_ptr<importedRoot_t>(new importedRoot_t(m__io));
}

importedAndRel_t::~importedAndRel_t() {
}
