// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "index_to_param_expr.h"

index_to_param_expr_t::index_to_param_expr_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, index_to_param_expr_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_sizes = 0;
    m_blocks = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void index_to_param_expr_t::_read() {
    m_qty = m__io->read_u4le();
    int l_sizes = qty();
    m_sizes = new std::vector<uint32_t>();
    m_sizes->reserve(l_sizes);
    for (int i = 0; i < l_sizes; i++) {
        m_sizes->push_back(m__io->read_u4le());
    }
    int l_blocks = qty();
    m_blocks = new std::vector<block_t*>();
    m_blocks->reserve(l_blocks);
    for (int i = 0; i < l_blocks; i++) {
        m_blocks->push_back(new block_t(i, m__io, this, m__root));
    }
}

index_to_param_expr_t::~index_to_param_expr_t() {
    _clean_up();
}

void index_to_param_expr_t::_clean_up() {
    if (m_sizes) {
        delete m_sizes; m_sizes = 0;
    }
    if (m_blocks) {
        for (std::vector<block_t*>::iterator it = m_blocks->begin(); it != m_blocks->end(); ++it) {
            delete *it;
        }
        delete m_blocks; m_blocks = 0;
    }
}

index_to_param_expr_t::block_t::block_t(int32_t p_idx, kaitai::kstream* p__io, index_to_param_expr_t* p__parent, index_to_param_expr_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_idx = p_idx;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void index_to_param_expr_t::block_t::_read() {
    m_buf = kaitai::kstream::bytes_to_str(m__io->read_bytes(_root()->sizes()->at(idx())), std::string("ASCII"));
}

index_to_param_expr_t::block_t::~block_t() {
    _clean_up();
}

void index_to_param_expr_t::block_t::_clean_up() {
}
