// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "switch_integers2.h"



switch_integers2_t::switch_integers2_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, switch_integers2_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
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
    // code: Int1Type(false), isArray=false, hasRaw=false, hasIO=false
    if (!n_len) {
        // len: IntMultiType(false,Width8,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    }
    // ham: BytesLimitType(Name(identifier(len)),None,false,None,None), isArray=false, hasRaw=false, hasIO=false
    if (!n_padding) {
        // padding: Int1Type(false), isArray=false, hasRaw=false, hasIO=false
    }
}

std::string switch_integers2_t::len_mod_str() {
    if (f_len_mod_str)
        return m_len_mod_str;
    m_len_mod_str = kaitai::kstream::to_string(((len() * 2) - 1));
    f_len_mod_str = true;
    return m_len_mod_str;
}
