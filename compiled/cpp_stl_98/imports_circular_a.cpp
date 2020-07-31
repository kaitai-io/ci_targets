// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "imports_circular_a.h"
#include "imports_circular_b.h"

imports_circular_a_t::imports_circular_a_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, imports_circular_a_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_two = 0;

    try {
        _read();
    } catch(...) {
        this->~imports_circular_a_t();
        throw;
    }
}

void imports_circular_a_t::_read() {
    m_code = m__io->read_u1();
    m_two = new imports_circular_b_t(m__io);
}

imports_circular_a_t::~imports_circular_a_t() {
    delete m_two;
}
