// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "debug_switch_user.h"

debug_switch_user_t::debug_switch_user_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, debug_switch_user_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
}

void debug_switch_user_t::_read() {
    m_code = m__io->read_u1();
    n_data = true;
    switch (code()) {
    case 1: {
        n_data = false;
        m_data = new one_t(m__io, this, m__root);
        static_cast<one_t*>(m_data)->_read();
        break;
    }
    case 2: {
        n_data = false;
        m_data = new two_t(m__io, this, m__root);
        static_cast<two_t*>(m_data)->_read();
        break;
    }
    }
}

debug_switch_user_t::~debug_switch_user_t() {
    if (!n_data) {
        if (m_data) delete m_data;
    }
}

debug_switch_user_t::one_t::one_t(kaitai::kstream* p__io, debug_switch_user_t* p__parent, debug_switch_user_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
}

void debug_switch_user_t::one_t::_read() {
    m_val = m__io->read_s2le();
}

debug_switch_user_t::one_t::~one_t() {
}

debug_switch_user_t::two_t::two_t(kaitai::kstream* p__io, debug_switch_user_t* p__parent, debug_switch_user_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
}

void debug_switch_user_t::two_t::_read() {
    m_val = m__io->read_u2le();
}

debug_switch_user_t::two_t::~two_t() {
}
