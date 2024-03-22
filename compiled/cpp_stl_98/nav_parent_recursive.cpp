// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "nav_parent_recursive.h"

nav_parent_recursive_t::nav_parent_recursive_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nav_parent_recursive_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
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
    n_next = true;
    if (value() == 255) {
        n_next = false;
        m_next = new nav_parent_recursive_t(m__io);
    }
}

nav_parent_recursive_t::~nav_parent_recursive_t() {
    _clean_up();
}

void nav_parent_recursive_t::_clean_up() {
    if (!n_next) {
        if (m_next) {
            delete m_next; m_next = 0;
        }
    }
}

uint8_t nav_parent_recursive_t::parent_value() {
    if (f_parent_value)
        return m_parent_value;
    n_parent_value = true;
    if (value() != 255) {
        n_parent_value = false;
        m_parent_value = static_cast<nav_parent_recursive_t*>(_parent())->value();
    }
    f_parent_value = true;
    return m_parent_value;
}
