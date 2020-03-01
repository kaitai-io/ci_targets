// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "nav_parent_switch.h"

navParentSwitch_t::navParentSwitch_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, navParentSwitch_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void navParentSwitch_t::_read() {
    m_category = m__io->read_u1();
    n_content = true;
    switch (category()) {
    case 1: {
        n_content = false;
        m_content = std::unique_ptr<element1_t>(new element1_t(m__io, this, m__root));
        break;
    }
    }
}

navParentSwitch_t::~navParentSwitch_t() {
    if (!n_content) {
    }
}

navParentSwitch_t::element1_t::element1_t(kaitai::kstream* p__io, navParentSwitch_t* p__parent, navParentSwitch_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_subelement = nullptr;
    _read();
}

void navParentSwitch_t::element1_t::_read() {
    m_foo = m__io->read_u1();
    m_subelement = std::unique_ptr<subelement1_t>(new subelement1_t(m__io, this, m__root));
}

navParentSwitch_t::element1_t::~element1_t() {
}

navParentSwitch_t::subelement1_t::subelement1_t(kaitai::kstream* p__io, navParentSwitch_t::element1_t* p__parent, navParentSwitch_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void navParentSwitch_t::subelement1_t::_read() {
    n_bar = true;
    if (_parent()->foo() == 66) {
        n_bar = false;
        m_bar = m__io->read_u1();
    }
}

navParentSwitch_t::subelement1_t::~subelement1_t() {
    if (!n_bar) {
    }
}
