// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "params_def.h"

params_def_t::params_def_t(uint32_t p_len, bool p_has_trailer, kaitai::kstream* p__io, kaitai::kstruct* p__parent, params_def_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_len = p_len;
    m_has_trailer = p_has_trailer;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void params_def_t::_read() {
    m_buf = kaitai::kstream::bytes_to_str(m__io->read_bytes(len()), "UTF-8");
    n_trailer = true;
    if (has_trailer()) {
        n_trailer = false;
        m_trailer = m__io->read_u1();
    }
}

params_def_t::~params_def_t() {
    _clean_up();
}

void params_def_t::_clean_up() {
    if (!n_trailer) {
    }
}
