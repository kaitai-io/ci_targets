// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "index_to_param_until.h"



index_to_param_until_t::index_to_param_until_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, index_to_param_until_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void index_to_param_until_t::_read() {
    m_qty = m__io->read_u4le();
    int l_sizes = qty();
    m_sizes = new std::vector<uint32_t>();
    m_sizes->reserve(l_sizes);
    for (int i = 0; i < l_sizes; i++) {
        m_sizes->push_back(m__io->read_u4le());
    }
    m_blocks = new std::vector<block_t*>();
    {
        int i = 0;
        block_t* _;
        do {
            _ = new block_t(i, m__io, this, m__root);
            m_blocks->push_back(_);
            i++;
        } while (!(_io()->is_eof()));
    }
}

index_to_param_until_t::~index_to_param_until_t() {
    delete m_sizes;
    for (std::vector<block_t*>::iterator it = m_blocks->begin(); it != m_blocks->end(); ++it) {
        delete *it;
    }
    delete m_blocks;
}

index_to_param_until_t::block_t::block_t(uint32_t p_idx, kaitai::kstream* p__io, index_to_param_until_t* p__parent, index_to_param_until_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_idx = p_idx;
    _read();
}

void index_to_param_until_t::block_t::_read() {
    m_buf = kaitai::kstream::bytes_to_str(m__io->read_bytes(_root()->sizes()->at(idx())), std::string("ASCII"));
}

index_to_param_until_t::block_t::~block_t() {
}
