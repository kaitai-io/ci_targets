// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "index_to_param_expr.h"

indexToParamExpr_t::indexToParamExpr_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, indexToParamExpr_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_sizes = nullptr;
    m_blocks = nullptr;
    _read();
}

void indexToParamExpr_t::_read() {
    m_qty = m__io->read_u4le();
    int l_sizes = qty();
    m_sizes = std::unique_ptr<std::vector<uint32_t>>(new std::vector<uint32_t>());
    m_sizes->reserve(l_sizes);
    for (int i = 0; i < l_sizes; i++) {
        m_sizes->push_back(std::move(m__io->read_u4le()));
    }
    int l_blocks = qty();
    m_blocks = std::unique_ptr<std::vector<std::unique_ptr<block_t>>>(new std::vector<std::unique_ptr<block_t>>());
    m_blocks->reserve(l_blocks);
    for (int i = 0; i < l_blocks; i++) {
        m_blocks->push_back(std::move(std::unique_ptr<block_t>(new block_t(i, m__io, this, m__root))));
    }
}

indexToParamExpr_t::~indexToParamExpr_t() {
}

indexToParamExpr_t::block_t::block_t(int32_t p_idx, kaitai::kstream* p__io, indexToParamExpr_t* p__parent, indexToParamExpr_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_idx = p_idx;
    _read();
}

void indexToParamExpr_t::block_t::_read() {
    m_buf = kaitai::kstream::bytes_to_str(m__io->read_bytes(_root()->sizes()->at(idx())), std::string("ASCII"));
}

indexToParamExpr_t::block_t::~block_t() {
}
