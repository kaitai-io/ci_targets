// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "params_call_extra_parens.h"

params_call_extra_parens_t::params_call_extra_parens_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, params_call_extra_parens_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_buf1 = 0;

    try {
        _read();
    } catch(...) {
        // this->~params_call_extra_parens_t();
        throw;
    }
}

void params_call_extra_parens_t::_read() {
    m_buf1 = new my_str1_t(5, m__io, this, m__root);
}

params_call_extra_parens_t::~params_call_extra_parens_t() {
    if (m_buf1) {
        delete m_buf1; m_buf1 = 0;
    }
}

params_call_extra_parens_t::my_str1_t::my_str1_t(uint32_t p_len, kaitai::kstream* p__io, params_call_extra_parens_t* p__parent, params_call_extra_parens_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_len = p_len;

    try {
        _read();
    } catch(...) {
        // this->~my_str1_t();
        throw;
    }
}

void params_call_extra_parens_t::my_str1_t::_read() {
    m_body = kaitai::kstream::bytes_to_str(m__io->read_bytes(len()), std::string("UTF-8"));
}

params_call_extra_parens_t::my_str1_t::~my_str1_t() {
}
