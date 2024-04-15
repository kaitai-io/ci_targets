// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "nav_parent_switch.h"

nav_parent_switch_t::nav_parent_switch_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nav_parent_switch_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    _read();
}

void nav_parent_switch_t::_read() {
    m_category = m__io->read_u1();
    n_content = true;
    switch (category()) {
    case 1: {
        n_content = false;
        m_content = std::unique_ptr<element_1_t>(new element_1_t(m__io, this, m__root));
        break;
    }
    }
}

nav_parent_switch_t::~nav_parent_switch_t() {
    _clean_up();
}

void nav_parent_switch_t::_clean_up() {
    if (!n_content) {
    }
}

nav_parent_switch_t::element_1_t::element_1_t(kaitai::kstream* p__io, nav_parent_switch_t* p__parent, nav_parent_switch_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_subelement = nullptr;
    _read();
}

void nav_parent_switch_t::element_1_t::_read() {
    m_foo = m__io->read_u1();
    m_subelement = std::unique_ptr<subelement_1_t>(new subelement_1_t(m__io, this, m__root));
}

nav_parent_switch_t::element_1_t::~element_1_t() {
    _clean_up();
}

void nav_parent_switch_t::element_1_t::_clean_up() {
}

nav_parent_switch_t::subelement_1_t::subelement_1_t(kaitai::kstream* p__io, nav_parent_switch_t::element_1_t* p__parent, nav_parent_switch_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nav_parent_switch_t::subelement_1_t::_read() {
    n_bar = true;
    if (_parent()->foo() == 66) {
        n_bar = false;
        m_bar = m__io->read_u1();
    }
}

nav_parent_switch_t::subelement_1_t::~subelement_1_t() {
    _clean_up();
}

void nav_parent_switch_t::subelement_1_t::_clean_up() {
    if (!n_bar) {
    }
}
