// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "index_to_param_until.h"

indexToParamUntil_t::indexToParamUntil_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, indexToParamUntil_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_sizes = 0;
    m_blocks = 0;
    _read();
}

void indexToParamUntil_t::_read() {
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

indexToParamUntil_t::~indexToParamUntil_t() {
    delete m_sizes;
    for (std::vector<block_t*>::iterator it = m_blocks->begin(); it != m_blocks->end(); ++it) {
        delete *it;
    }
    delete m_blocks;
}

indexToParamUntil_t::block_t::block_t(int32_t p_idx, kaitai::kstream* p__io, indexToParamUntil_t* p__parent, indexToParamUntil_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_idx = p_idx;
    _read();
}

void indexToParamUntil_t::block_t::_read() {
    m_buf = kaitai::kstream::bytes_to_str(m__io->read_bytes(_root()->sizes()->at(idx())), std::string("ASCII"));
}

indexToParamUntil_t::block_t::~block_t() {
}
