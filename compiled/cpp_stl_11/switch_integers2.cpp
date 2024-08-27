// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "switch_integers2.h"

switch_integers2_t::switch_integers2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, switch_integers2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_len_mod_str = false;
    _read();
}

void switch_integers2_t::_read() {
    m_code = m__io->read_u1();
    n_len = true;
    switch (code()) {
    case 1: {
        n_len = false;
        m_len = m__io->read_u1();
        break;
    }
    case 2: {
        n_len = false;
        m_len = m__io->read_u2le();
        break;
    }
    case 4: {
        n_len = false;
        m_len = m__io->read_u4le();
        break;
    }
    case 8: {
        n_len = false;
        m_len = m__io->read_u8le();
        break;
    }
    }
    m_ham = m__io->read_bytes(len());
    n_padding = true;
    if (len() > 3) {
        n_padding = false;
        m_padding = m__io->read_u1();
    }
}

switch_integers2_t::~switch_integers2_t() {
    _clean_up();
}

void switch_integers2_t::_clean_up() {
    if (!n_len) {
    }
    if (!n_padding) {
    }
}

std::string switch_integers2_t::len_mod_str() {
    if (f_len_mod_str)
        return m_len_mod_str;
    f_len_mod_str = true;
    m_len_mod_str = kaitai::kstream::to_string(len() * 2 - 1);
    return m_len_mod_str;
}
