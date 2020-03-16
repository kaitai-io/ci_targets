// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "imports_circular_b.h"
#include "imports_circular_a.h"

imports_circular_b_t::imports_circular_b_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, imports_circular_b_t* /* p__root */) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_back_ref = 0;
    _read();
}

void imports_circular_b_t::_read() {
    m_initial = m__io->read_u1();
    n_back_ref = true;
    if (initial() == 65) {
        n_back_ref = false;
        m_back_ref = new imports_circular_a_t(m__io);
    }
}

imports_circular_b_t::~imports_circular_b_t() {
    if (!n_back_ref) {
        delete m_back_ref;
    }
}
