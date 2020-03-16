// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "nav_parent_switch_cast.h"

nav_parent_switch_cast_t::nav_parent_switch_cast_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nav_parent_switch_cast_t* /* p__root */) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_foo = 0;
    _read();
}

void nav_parent_switch_cast_t::_read() {
    m_foo = new foo_t(m__io, this, m__root);
}

nav_parent_switch_cast_t::~nav_parent_switch_cast_t() {
    delete m_foo;
}

nav_parent_switch_cast_t::foo_t::foo_t(kaitai::kstream* p__io, nav_parent_switch_cast_t* p__parent, nav_parent_switch_cast_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m__io__raw_buf = 0;
    _read();
}

void nav_parent_switch_cast_t::foo_t::_read() {
    m_buf_type = m__io->read_u1();
    m_flag = m__io->read_u1();
    n_buf = true;
    switch (buf_type()) {
    case 0: {
        n_buf = false;
        m__raw_buf = m__io->read_bytes(kaitai::to_signed(4));
        m__io__raw_buf = new kaitai::kstream(m__raw_buf);
        m_buf = new zero_t(m__io__raw_buf, this, m__root);
        break;
    }
    case 1: {
        n_buf = false;
        m__raw_buf = m__io->read_bytes(kaitai::to_signed(4));
        m__io__raw_buf = new kaitai::kstream(m__raw_buf);
        m_buf = new one_t(m__io__raw_buf, this, m__root);
        break;
    }
    default: {
        m__raw_buf = m__io->read_bytes(kaitai::to_signed(4));
        break;
    }
    }
}

nav_parent_switch_cast_t::foo_t::~foo_t() {
    if (!n_buf) {
        delete m__io__raw_buf;
        delete m_buf;
    }
}

nav_parent_switch_cast_t::foo_t::zero_t::zero_t(kaitai::kstream* p__io, nav_parent_switch_cast_t::foo_t* p__parent, nav_parent_switch_cast_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_bar = 0;
    _read();
}

void nav_parent_switch_cast_t::foo_t::zero_t::_read() {
    m_bar = new bar_t(m__io, this, m__root);
}

nav_parent_switch_cast_t::foo_t::zero_t::~zero_t() {
    delete m_bar;
}

nav_parent_switch_cast_t::foo_t::one_t::one_t(kaitai::kstream* p__io, nav_parent_switch_cast_t::foo_t* p__parent, nav_parent_switch_cast_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_bar = 0;
    _read();
}

void nav_parent_switch_cast_t::foo_t::one_t::_read() {
    m_bar = new bar_t(m__io, this, m__root);
}

nav_parent_switch_cast_t::foo_t::one_t::~one_t() {
    delete m_bar;
}

nav_parent_switch_cast_t::foo_t::bar_t::bar_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nav_parent_switch_cast_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_flag = false;
    _read();
}

void nav_parent_switch_cast_t::foo_t::bar_t::_read() {
}

nav_parent_switch_cast_t::foo_t::bar_t::~bar_t() {
}

uint8_t nav_parent_switch_cast_t::foo_t::bar_t::flag() {
    if (f_flag)
        return m_flag;
    m_flag = static_cast<nav_parent_switch_cast_t::foo_t*>(_parent()->_parent())->flag();
    f_flag = true;
    return m_flag;
}
