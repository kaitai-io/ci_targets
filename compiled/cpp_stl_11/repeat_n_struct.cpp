// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "repeat_n_struct.h"

repeatNStruct_t::repeatNStruct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeatNStruct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_chunks = nullptr;
    _read();
}

void repeatNStruct_t::_read() {
    m_qty = m__io->read_u4le();
    int l_chunks = qty();
    m_chunks = std::unique_ptr<std::vector<std::unique_ptr<chunk_t>>>(new std::vector<std::unique_ptr<chunk_t>>());
    m_chunks->reserve(l_chunks);
    for (int i = 0; i < l_chunks; i++) {
        m_chunks->push_back(std::move(std::unique_ptr<chunk_t>(new chunk_t(m__io, this, m__root))));
    }
}

repeatNStruct_t::~repeatNStruct_t() {
}

repeatNStruct_t::chunk_t::chunk_t(kaitai::kstream* p__io, repeatNStruct_t* p__parent, repeatNStruct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void repeatNStruct_t::chunk_t::_read() {
    m_offset = m__io->read_u4le();
    m_len = m__io->read_u4le();
}

repeatNStruct_t::chunk_t::~chunk_t() {
}
