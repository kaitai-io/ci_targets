// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "params_call.h"

params_call_t::params_call_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, params_call_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_buf1 = 0;
    m_buf2 = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void params_call_t::_read() {
    m_buf1 = new my_str1_t(5, m__io, this, m__root);
    m_buf2 = new my_str2_t(2 + 3, true, m__io, this, m__root);
}

params_call_t::~params_call_t() {
    _clean_up();
}

void params_call_t::_clean_up() {
    if (m_buf1) {
        delete m_buf1; m_buf1 = 0;
    }
    if (m_buf2) {
        delete m_buf2; m_buf2 = 0;
    }
}

params_call_t::my_str1_t::my_str1_t(uint32_t p_len, kaitai::kstream* p__io, params_call_t* p__parent, params_call_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_len = p_len;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void params_call_t::my_str1_t::_read() {
    m_body = kaitai::kstream::bytes_to_str(m__io->read_bytes(len()), "UTF-8");
}

params_call_t::my_str1_t::~my_str1_t() {
    _clean_up();
}

void params_call_t::my_str1_t::_clean_up() {
}

params_call_t::my_str2_t::my_str2_t(uint32_t p_len, bool p_has_trailer, kaitai::kstream* p__io, params_call_t* p__parent, params_call_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_len = p_len;
    m_has_trailer = p_has_trailer;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void params_call_t::my_str2_t::_read() {
    m_body = kaitai::kstream::bytes_to_str(m__io->read_bytes(len()), "UTF-8");
    n_trailer = true;
    if (has_trailer()) {
        n_trailer = false;
        m_trailer = m__io->read_u1();
    }
}

params_call_t::my_str2_t::~my_str2_t() {
    _clean_up();
}

void params_call_t::my_str2_t::_clean_up() {
    if (!n_trailer) {
    }
}
