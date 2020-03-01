// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "debug_switch_user.h"

debugSwitchUser_t::debugSwitchUser_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, debugSwitchUser_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
}

void debugSwitchUser_t::_read() {
    m_code = m__io->read_u1();
    n_data = true;
    switch (code()) {
    case 1: {
        n_data = false;
        m_data = std::unique_ptr<one_t>(new one_t(m__io, this, m__root));
        static_cast<std::unique_ptr<one_t>>(m_data)->_read();
        break;
    }
    case 2: {
        n_data = false;
        m_data = std::unique_ptr<two_t>(new two_t(m__io, this, m__root));
        static_cast<std::unique_ptr<two_t>>(m_data)->_read();
        break;
    }
    }
}

debugSwitchUser_t::~debugSwitchUser_t() {
    if (!n_data) {
    }
}

debugSwitchUser_t::one_t::one_t(kaitai::kstream* p__io, debugSwitchUser_t* p__parent, debugSwitchUser_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
}

void debugSwitchUser_t::one_t::_read() {
    m_val = m__io->read_s2le();
}

debugSwitchUser_t::one_t::~one_t() {
}

debugSwitchUser_t::two_t::two_t(kaitai::kstream* p__io, debugSwitchUser_t* p__parent, debugSwitchUser_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
}

void debugSwitchUser_t::two_t::_read() {
    m_val = m__io->read_u2le();
}

debugSwitchUser_t::two_t::~two_t() {
}
