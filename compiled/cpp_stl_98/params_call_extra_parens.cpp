// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "params_call_extra_parens.h"

paramsCallExtraParens_t::paramsCallExtraParens_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, paramsCallExtraParens_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_buf1 = 0;
    _read();
}

void paramsCallExtraParens_t::_read() {
    m_buf1 = new myStr1_t(5, m__io, this, m__root);
}

paramsCallExtraParens_t::~paramsCallExtraParens_t() {
    delete m_buf1;
}

paramsCallExtraParens_t::myStr1_t::myStr1_t(uint32_t p_len, kaitai::kstream* p__io, paramsCallExtraParens_t* p__parent, paramsCallExtraParens_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_len = p_len;
    _read();
}

void paramsCallExtraParens_t::myStr1_t::_read() {
    m_body = kaitai::kstream::bytes_to_str(m__io->read_bytes(len()), std::string("UTF-8"));
}

paramsCallExtraParens_t::myStr1_t::~myStr1_t() {
}
