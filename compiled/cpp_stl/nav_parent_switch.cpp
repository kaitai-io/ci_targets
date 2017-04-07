// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "nav_parent_switch.h"

#include <iostream>
#include <fstream>

nav_parent_switch_t::nav_parent_switch_t(kaitai::kstream *p_io, kaitai::kstruct *p_parent, nav_parent_switch_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    m_category = m__io->read_u1();
    switch (category()) {
    case 1:
        m_content = new element_1_t(m__io, this, m__root);
        break;
    }
}

nav_parent_switch_t::~nav_parent_switch_t() {
}

nav_parent_switch_t::element_1_t::element_1_t(kaitai::kstream *p_io, nav_parent_switch_t *p_parent, nav_parent_switch_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m_foo = m__io->read_u1();
    m_subelement = new subelement_1_t(m__io, this, m__root);
}

nav_parent_switch_t::element_1_t::~element_1_t() {
    delete m_subelement;
}

nav_parent_switch_t::subelement_1_t::subelement_1_t(kaitai::kstream *p_io, nav_parent_switch_t::element_1_t *p_parent, nav_parent_switch_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    n_bar = true;
    if (_parent()->foo() == 66) {
        n_bar = false;
        m_bar = m__io->read_u1();
    }
}

nav_parent_switch_t::subelement_1_t::~subelement_1_t() {
}
