// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "nav_parent_false2.h"

nav_parent_false2_t::nav_parent_false2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nav_parent_false2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_parentless = nullptr;
    _read();
}

void nav_parent_false2_t::_read() {
    m_parentless = std::unique_ptr<child_t>(new child_t(m__io, nullptr, m__root));
}

nav_parent_false2_t::~nav_parent_false2_t() {
    _clean_up();
}

void nav_parent_false2_t::_clean_up() {
}

nav_parent_false2_t::child_t::child_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nav_parent_false2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nav_parent_false2_t::child_t::_read() {
    m_foo = m__io->read_u1();
}

nav_parent_false2_t::child_t::~child_t() {
    _clean_up();
}

void nav_parent_false2_t::child_t::_clean_up() {
}
