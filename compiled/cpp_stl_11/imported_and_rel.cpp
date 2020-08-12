// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "imported_and_rel.h"

imported_and_rel_t::imported_and_rel_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, imported_and_rel_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_two = nullptr;
    _read();
}

void imported_and_rel_t::_read() {
    m_one = m__io->read_u1();
    m_two = std::unique_ptr<imported_root_t>(new imported_root_t(m__io));
}

imported_and_rel_t::~imported_and_rel_t() {
    _clean_up();
}

void imported_and_rel_t::_clean_up() {
}
