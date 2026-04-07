// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "nav_root_recursive.h"

nav_root_recursive_t::nav_root_recursive_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nav_root_recursive_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_next = 0;
    f_root_value = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void nav_root_recursive_t::_read() {
    m_value = m__io->read_u1();
    if (value() == 255) {
        m_next = new nav_root_recursive_t(m__io, this, m__root);
    }
}

nav_root_recursive_t::~nav_root_recursive_t() {
    _clean_up();
}

void nav_root_recursive_t::_clean_up() {
    delete m_next;
}

uint8_t nav_root_recursive_t::root_value() {
    if (f_root_value)
        return m_root_value;
    f_root_value = true;
    m_root_value = _root()->value();
    return m_root_value;
}
