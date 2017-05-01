// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "recursive_one.h"

#include <iostream>
#include <fstream>

recursive_one_t::recursive_one_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, recursive_one_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    m_one = m__io->read_u1();
    switch ((one() & 3)) {
    case 0:
        m_next = new recursive_one_t(m__io);
        break;
    case 1:
        m_next = new recursive_one_t(m__io);
        break;
    case 2:
        m_next = new recursive_one_t(m__io);
        break;
    case 3:
        m_next = new fini_t(m__io, this, m__root);
        break;
    }
}

recursive_one_t::~recursive_one_t() {
}

recursive_one_t::fini_t::fini_t(kaitai::kstream *p_io, recursive_one_t* p_parent, recursive_one_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m_finisher = m__io->read_u2le();
}

recursive_one_t::fini_t::~fini_t() {
}
