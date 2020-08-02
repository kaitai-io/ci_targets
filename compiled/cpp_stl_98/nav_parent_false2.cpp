// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "nav_parent_false2.h"

nav_parent_false2_t::nav_parent_false2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nav_parent_false2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_parentless = 0;

    try {
        _read();
    } catch(...) {
        _cleanUp();
        throw;
    }
}

void nav_parent_false2_t::_read() {
    m_parentless = new child_t(m__io, 0, m__root);
}

nav_parent_false2_t::~nav_parent_false2_t() {
    _cleanUp();
}

void nav_parent_false2_t::_cleanUp() {
    if (m_parentless) {
        delete m_parentless; m_parentless = 0;
    }
}

nav_parent_false2_t::child_t::child_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nav_parent_false2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _cleanUp();
        throw;
    }
}

void nav_parent_false2_t::child_t::_read() {
    m_foo = m__io->read_u1();
}

nav_parent_false2_t::child_t::~child_t() {
    _cleanUp();
}

void nav_parent_false2_t::child_t::_cleanUp() {
}
