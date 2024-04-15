// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "nav_parent_switch_cast.h"

nav_parent_switch_cast_t::nav_parent_switch_cast_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nav_parent_switch_cast_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_main = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void nav_parent_switch_cast_t::_read() {
    m_main = new foo_t(m__io, this, m__root);
}

nav_parent_switch_cast_t::~nav_parent_switch_cast_t() {
    _clean_up();
}

void nav_parent_switch_cast_t::_clean_up() {
    if (m_main) {
        delete m_main; m_main = 0;
    }
}

nav_parent_switch_cast_t::foo_t::foo_t(kaitai::kstream* p__io, nav_parent_switch_cast_t* p__parent, nav_parent_switch_cast_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m__io__raw_buf = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void nav_parent_switch_cast_t::foo_t::_read() {
    m_buf_type = m__io->read_u1();
    m_flag = m__io->read_u1();
    n_buf = true;
    switch (buf_type()) {
    case 0: {
        n_buf = false;
        m__raw_buf = m__io->read_bytes(4);
        m__io__raw_buf = new kaitai::kstream(m__raw_buf);
        m_buf = new zero_t(m__io__raw_buf, this, m__root);
        break;
    }
    case 1: {
        n_buf = false;
        m__raw_buf = m__io->read_bytes(4);
        m__io__raw_buf = new kaitai::kstream(m__raw_buf);
        m_buf = new one_t(m__io__raw_buf, this, m__root);
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
        if (m__io__raw_buf) {
            delete m__io__raw_buf; m__io__raw_buf = 0;
        }
        if (m_buf) {
            delete m_buf; m_buf = 0;
        }
    }
}

nav_parent_switch_cast_t::foo_t::common_t::common_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nav_parent_switch_cast_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_flag = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
    m_flag = static_cast<nav_parent_switch_cast_t::foo_t*>(_parent()->_parent())->flag();
    f_flag = true;
    return m_flag;
}

nav_parent_switch_cast_t::foo_t::one_t::one_t(kaitai::kstream* p__io, nav_parent_switch_cast_t::foo_t* p__parent, nav_parent_switch_cast_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_branch = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void nav_parent_switch_cast_t::foo_t::one_t::_read() {
    m_branch = new common_t(m__io, this, m__root);
}

nav_parent_switch_cast_t::foo_t::one_t::~one_t() {
    _clean_up();
}

void nav_parent_switch_cast_t::foo_t::one_t::_clean_up() {
    if (m_branch) {
        delete m_branch; m_branch = 0;
    }
}

nav_parent_switch_cast_t::foo_t::zero_t::zero_t(kaitai::kstream* p__io, nav_parent_switch_cast_t::foo_t* p__parent, nav_parent_switch_cast_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_branch = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void nav_parent_switch_cast_t::foo_t::zero_t::_read() {
    m_branch = new common_t(m__io, this, m__root);
}

nav_parent_switch_cast_t::foo_t::zero_t::~zero_t() {
    _clean_up();
}

void nav_parent_switch_cast_t::foo_t::zero_t::_clean_up() {
    if (m_branch) {
        delete m_branch; m_branch = 0;
    }
}
