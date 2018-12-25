// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "params_pass_usertype.h"

#include <memory>

params_pass_usertype_t::params_pass_usertype_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, params_pass_usertype_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_first = nullptr;
    m_one = nullptr;
    _read();
}

void params_pass_usertype_t::_read() {
    m_first = std::unique_ptr<block_t>(new block_t(m__io, this, m__root));
    m_one = std::unique_ptr<param_type_t>(new param_type_t(first(), m__io, this, m__root));
}

params_pass_usertype_t::~params_pass_usertype_t() {
}

params_pass_usertype_t::block_t::block_t(kaitai::kstream* p__io, params_pass_usertype_t* p__parent, params_pass_usertype_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void params_pass_usertype_t::block_t::_read() {
    m_foo = m__io->read_u1();
}

params_pass_usertype_t::block_t::~block_t() {
}

params_pass_usertype_t::param_type_t::param_type_t(std::unique_ptr<block_t> p_foo, kaitai::kstream* p__io, params_pass_usertype_t* p__parent, params_pass_usertype_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_foo = p_foo;
    _read();
}

void params_pass_usertype_t::param_type_t::_read() {
    m_buf = m__io->read_bytes(foo()->foo());
}

params_pass_usertype_t::param_type_t::~param_type_t() {
}
