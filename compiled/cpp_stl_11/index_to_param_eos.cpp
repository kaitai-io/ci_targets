// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "index_to_param_eos.h"

#include <memory>

index_to_param_eos_t::index_to_param_eos_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, index_to_param_eos_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_sizes = nullptr;
    m_blocks = nullptr;
    _read();
}

void index_to_param_eos_t::_read() {
    m_qty = m__io->read_u4le();
    int l_sizes = qty();
    m_sizes = new std::vector<uint32_t>();
    m_sizes->reserve(l_sizes);
    for (int i = 0; i < l_sizes; i++) {
        m_sizes->push_back(std::move(m__io->read_u4le()));
    }
    m_blocks = new std::vector<std::unique_ptr<block_t>>();
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_blocks->push_back(std::move(std::make_unique<block_t>(i, m__io, this, m__root)));
            i++;
        }
    }
}

index_to_param_eos_t::~index_to_param_eos_t() {
}

index_to_param_eos_t::block_t::block_t(int32_t p_idx, kaitai::kstream* p__io, index_to_param_eos_t* p__parent, index_to_param_eos_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_idx = p_idx;
    _read();
}

void index_to_param_eos_t::block_t::_read() {
    m_buf = kaitai::kstream::bytes_to_str(m__io->read_bytes(_root()->sizes()->at(idx())), std::string("ASCII"));
}

index_to_param_eos_t::block_t::~block_t() {
}
