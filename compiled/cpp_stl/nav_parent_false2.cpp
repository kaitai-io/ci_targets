// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "nav_parent_false2.h"



nav_parent_false2_t::nav_parent_false2_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, nav_parent_false2_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void nav_parent_false2_t::_read() {
    m_parentless = new child_t(m__io, 0, m__root);
}

nav_parent_false2_t::~nav_parent_false2_t() {
    delete m_parentless;
}

nav_parent_false2_t::child_t::child_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, nav_parent_false2_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void nav_parent_false2_t::child_t::_read() {
    m_foo = m__io->read_u1();
}

nav_parent_false2_t::child_t::~child_t() {
}
