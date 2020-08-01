// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "params_pass_usertype.h"

params_pass_usertype_t::params_pass_usertype_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, params_pass_usertype_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_first = 0;
    m_one = 0;

    try {
        _read();
    } catch(...) {
        // this->~params_pass_usertype_t();
        throw;
    }
}

void params_pass_usertype_t::_read() {
    m_first = new block_t(m__io, this, m__root);
    m_one = new param_type_t(first(), m__io, this, m__root);
}

params_pass_usertype_t::~params_pass_usertype_t() {
    if (m_first) {
        delete m_first; m_first = 0;
    }
    if (m_one) {
        delete m_one; m_one = 0;
    }
}

params_pass_usertype_t::block_t::block_t(kaitai::kstream* p__io, params_pass_usertype_t* p__parent, params_pass_usertype_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        // this->~block_t();
        throw;
    }
}

void params_pass_usertype_t::block_t::_read() {
    m_foo = m__io->read_u1();
}

params_pass_usertype_t::block_t::~block_t() {
}

params_pass_usertype_t::param_type_t::param_type_t(block_t* p_foo, kaitai::kstream* p__io, params_pass_usertype_t* p__parent, params_pass_usertype_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_foo = p_foo;

    try {
        _read();
    } catch(...) {
        // this->~param_type_t();
        throw;
    }
}

void params_pass_usertype_t::param_type_t::_read() {
    m_buf = m__io->read_bytes(foo()->foo());
}

params_pass_usertype_t::param_type_t::~param_type_t() {
}
