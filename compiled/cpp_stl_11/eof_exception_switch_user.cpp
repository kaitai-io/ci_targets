// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "eof_exception_switch_user.h"

eof_exception_switch_user_t::eof_exception_switch_user_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, eof_exception_switch_user_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    _read();
}

void eof_exception_switch_user_t::_read() {
    m_code = m__io->read_u2le();
    n_data = true;
    switch (code()) {
    case 2: {
        n_data = false;
        m_data = std::unique_ptr<two_t>(new two_t(m__io, this, m__root));
        break;
    }
    case 511: {
        n_data = false;
        m_data = std::unique_ptr<one_t>(new one_t(m__io, this, m__root));
        break;
    }
    }
}

eof_exception_switch_user_t::~eof_exception_switch_user_t() {
    _clean_up();
}

void eof_exception_switch_user_t::_clean_up() {
    if (!n_data) {
    }
}

eof_exception_switch_user_t::one_t::one_t(kaitai::kstream* p__io, eof_exception_switch_user_t* p__parent, eof_exception_switch_user_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void eof_exception_switch_user_t::one_t::_read() {
    m_val = m__io->read_s2le();
}

eof_exception_switch_user_t::one_t::~one_t() {
    _clean_up();
}

void eof_exception_switch_user_t::one_t::_clean_up() {
}

eof_exception_switch_user_t::two_t::two_t(kaitai::kstream* p__io, eof_exception_switch_user_t* p__parent, eof_exception_switch_user_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void eof_exception_switch_user_t::two_t::_read() {
    m_val = m__io->read_u2le();
}

eof_exception_switch_user_t::two_t::~two_t() {
    _clean_up();
}

void eof_exception_switch_user_t::two_t::_clean_up() {
}
