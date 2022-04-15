// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "params_pass_array_usertype.h"

params_pass_array_usertype_t::params_pass_array_usertype_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, params_pass_array_usertype_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_blocks = nullptr;
    m_pass_blocks = nullptr;
    _read();
}

void params_pass_array_usertype_t::_read() {
    m_blocks = std::unique_ptr<std::vector<std::unique_ptr<block_t>>>(new std::vector<std::unique_ptr<block_t>>());
    const int l_blocks = 2;
    for (int i = 0; i < l_blocks; i++) {
        m_blocks->push_back(std::move(std::unique_ptr<block_t>(new block_t(m__io, this, m__root))));
    }
    m_pass_blocks = std::unique_ptr<param_type_t>(new param_type_t(blocks(), m__io, this, m__root));
}

params_pass_array_usertype_t::~params_pass_array_usertype_t() {
    _clean_up();
}

void params_pass_array_usertype_t::_clean_up() {
}

params_pass_array_usertype_t::block_t::block_t(kaitai::kstream* p__io, params_pass_array_usertype_t* p__parent, params_pass_array_usertype_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void params_pass_array_usertype_t::block_t::_read() {
    m_foo = m__io->read_u1();
}

params_pass_array_usertype_t::block_t::~block_t() {
    _clean_up();
}

void params_pass_array_usertype_t::block_t::_clean_up() {
}

params_pass_array_usertype_t::param_type_t::param_type_t(std::vector<block_t*>* p_bar, kaitai::kstream* p__io, params_pass_array_usertype_t* p__parent, params_pass_array_usertype_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_bar = p_bar;
    _read();
}

void params_pass_array_usertype_t::param_type_t::_read() {
    m_one = m__io->read_bytes(bar()->at(0)->foo());
    m_two = m__io->read_bytes(bar()->at(1)->foo());
}

params_pass_array_usertype_t::param_type_t::~param_type_t() {
    _clean_up();
}

void params_pass_array_usertype_t::param_type_t::_clean_up() {
}
