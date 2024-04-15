// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "imports_circular_a.h"

imports_circular_a_t::imports_circular_a_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, imports_circular_a_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_two = nullptr;
    _read();
}

void imports_circular_a_t::_read() {
    m_code = m__io->read_u1();
    m_two = std::unique_ptr<imports_circular_b_t>(new imports_circular_b_t(m__io));
}

imports_circular_a_t::~imports_circular_a_t() {
    _clean_up();
}

void imports_circular_a_t::_clean_up() {
}
