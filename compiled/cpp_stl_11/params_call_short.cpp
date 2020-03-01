// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "params_call_short.h"

paramsCallShort_t::paramsCallShort_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, paramsCallShort_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_buf1 = nullptr;
    m_buf2 = nullptr;
    _read();
}

void paramsCallShort_t::_read() {
    m_buf1 = std::unique_ptr<myStr1_t>(new myStr1_t(5, m__io, this, m__root));
    m_buf2 = std::unique_ptr<myStr2_t>(new myStr2_t((2 + 3), true, m__io, this, m__root));
}

paramsCallShort_t::~paramsCallShort_t() {
}

paramsCallShort_t::myStr1_t::myStr1_t(uint32_t p_len, kaitai::kstream* p__io, paramsCallShort_t* p__parent, paramsCallShort_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_len = p_len;
    _read();
}

void paramsCallShort_t::myStr1_t::_read() {
    m_body = kaitai::kstream::bytes_to_str(m__io->read_bytes(len()), std::string("UTF-8"));
}

paramsCallShort_t::myStr1_t::~myStr1_t() {
}

paramsCallShort_t::myStr2_t::myStr2_t(uint32_t p_len, bool p_has_trailer, kaitai::kstream* p__io, paramsCallShort_t* p__parent, paramsCallShort_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_len = p_len;
    m_has_trailer = p_has_trailer;
    _read();
}

void paramsCallShort_t::myStr2_t::_read() {
    m_body = kaitai::kstream::bytes_to_str(m__io->read_bytes(len()), std::string("UTF-8"));
    n_trailer = true;
    if (has_trailer()) {
        n_trailer = false;
        m_trailer = m__io->read_u1();
    }
}

paramsCallShort_t::myStr2_t::~myStr2_t() {
    if (!n_trailer) {
    }
}
