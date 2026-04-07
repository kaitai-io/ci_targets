// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "nav_parent_recursive.h"

nav_parent_recursive_t::nav_parent_recursive_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nav_parent_recursive_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_next = 0;
    f_parent_value = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void nav_parent_recursive_t::_read() {
    m_value = m__io->read_u1();
    if (value() == 255) {
        m_next = new nav_parent_recursive_t(m__io, this, m__root);
    }
}

nav_parent_recursive_t::~nav_parent_recursive_t() {
    _clean_up();
}

void nav_parent_recursive_t::_clean_up() {
    delete m_next;
}

uint8_t nav_parent_recursive_t::parent_value() {
    if (f_parent_value)
        return m_parent_value;
    f_parent_value = true;
    n_parent_value = true;
    if (value() != 255) {
        n_parent_value = false;
        m_parent_value = static_cast<nav_parent_recursive_t*>(_parent())->value();
    }
    return m_parent_value;
}
