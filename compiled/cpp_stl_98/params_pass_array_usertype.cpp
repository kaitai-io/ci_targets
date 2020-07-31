// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "params_pass_array_usertype.h"

params_pass_array_usertype_t::params_pass_array_usertype_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, params_pass_array_usertype_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_blocks = 0;
    m_pass_blocks = 0;

    try {
        _read();
    } catch(...) {
        this->~params_pass_array_usertype_t();
        throw;
    }
}

void params_pass_array_usertype_t::_read() {
    int l_blocks = 2;
    m_blocks = new std::vector<block_t*>();
    m_blocks->reserve(l_blocks);
    for (int i = 0; i < l_blocks; i++) {
        m_blocks->push_back(new block_t(m__io, this, m__root));
    }
    m_pass_blocks = new param_type_t(blocks(), m__io, this, m__root);
}

params_pass_array_usertype_t::~params_pass_array_usertype_t() {
    if (m_blocks) {
        for (std::vector<block_t*>::iterator it = m_blocks->begin(); it != m_blocks->end(); ++it) {
            delete *it;
        }
        delete m_blocks;
    }
    if (m_pass_blocks) delete m_pass_blocks;
}

params_pass_array_usertype_t::block_t::block_t(kaitai::kstream* p__io, params_pass_array_usertype_t* p__parent, params_pass_array_usertype_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        this->~block_t();
        throw;
    }
}

void params_pass_array_usertype_t::block_t::_read() {
    m_foo = m__io->read_u1();
}

params_pass_array_usertype_t::block_t::~block_t() {
}

params_pass_array_usertype_t::param_type_t::param_type_t(std::vector<block_t*>* p_bar, kaitai::kstream* p__io, params_pass_array_usertype_t* p__parent, params_pass_array_usertype_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_bar = p_bar;

    try {
        _read();
    } catch(...) {
        this->~param_type_t();
        throw;
    }
}

void params_pass_array_usertype_t::param_type_t::_read() {
    m_one = m__io->read_bytes(bar()->at(0)->foo());
    m_two = m__io->read_bytes(bar()->at(1)->foo());
}

params_pass_array_usertype_t::param_type_t::~param_type_t() {
}
