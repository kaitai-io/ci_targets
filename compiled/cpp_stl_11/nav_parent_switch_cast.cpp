// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "nav_parent_switch_cast.h"

nav_parent_switch_cast_t::nav_parent_switch_cast_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nav_parent_switch_cast_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_main = nullptr;
    _read();
}

void nav_parent_switch_cast_t::_read() {
    m_main = std::unique_ptr<foo_t>(new foo_t(m__io, this, m__root));
}

nav_parent_switch_cast_t::~nav_parent_switch_cast_t() {
    _clean_up();
}

void nav_parent_switch_cast_t::_clean_up() {
}

nav_parent_switch_cast_t::foo_t::foo_t(kaitai::kstream* p__io, nav_parent_switch_cast_t* p__parent, nav_parent_switch_cast_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m__io__raw_buf = nullptr;
    _read();
}

void nav_parent_switch_cast_t::foo_t::_read() {
    m_buf_type = m__io->read_u1();
    m_flag = m__io->read_u1();
    n_buf = true;
    switch (buf_type()) {
    case 0: {
        n_buf = false;
        m__raw_buf = m__io->read_bytes(4);
        m__io__raw_buf = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_buf));
        m_buf = std::unique_ptr<zero_t>(new zero_t(m__io__raw_buf.get(), this, m__root));
        break;
    }
    case 1: {
        n_buf = false;
        m__raw_buf = m__io->read_bytes(4);
        m__io__raw_buf = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_buf));
        m_buf = std::unique_ptr<one_t>(new one_t(m__io__raw_buf.get(), this, m__root));
        break;
    }
    default: {
        m__raw_buf = m__io->read_bytes(4);
        break;
    }
    }
}

nav_parent_switch_cast_t::foo_t::~foo_t() {
    _clean_up();
}

void nav_parent_switch_cast_t::foo_t::_clean_up() {
    if (!n_buf) {
    }
}

nav_parent_switch_cast_t::foo_t::common_t::common_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nav_parent_switch_cast_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_flag = false;
    _read();
}

void nav_parent_switch_cast_t::foo_t::common_t::_read() {
}

nav_parent_switch_cast_t::foo_t::common_t::~common_t() {
    _clean_up();
}

void nav_parent_switch_cast_t::foo_t::common_t::_clean_up() {
}

uint8_t nav_parent_switch_cast_t::foo_t::common_t::flag() {
    if (f_flag)
        return m_flag;
    f_flag = true;
    m_flag = static_cast<nav_parent_switch_cast_t::foo_t*>(_parent()->_parent())->flag();
    return m_flag;
}

nav_parent_switch_cast_t::foo_t::one_t::one_t(kaitai::kstream* p__io, nav_parent_switch_cast_t::foo_t* p__parent, nav_parent_switch_cast_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_branch = nullptr;
    _read();
}

void nav_parent_switch_cast_t::foo_t::one_t::_read() {
    m_branch = std::unique_ptr<common_t>(new common_t(m__io, this, m__root));
}

nav_parent_switch_cast_t::foo_t::one_t::~one_t() {
    _clean_up();
}

void nav_parent_switch_cast_t::foo_t::one_t::_clean_up() {
}

nav_parent_switch_cast_t::foo_t::zero_t::zero_t(kaitai::kstream* p__io, nav_parent_switch_cast_t::foo_t* p__parent, nav_parent_switch_cast_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_branch = nullptr;
    _read();
}

void nav_parent_switch_cast_t::foo_t::zero_t::_read() {
    m_branch = std::unique_ptr<common_t>(new common_t(m__io, this, m__root));
}

nav_parent_switch_cast_t::foo_t::zero_t::~zero_t() {
    _clean_up();
}

void nav_parent_switch_cast_t::foo_t::zero_t::_clean_up() {
}
