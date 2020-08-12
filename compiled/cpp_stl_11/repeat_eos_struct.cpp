// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_eos_struct.h"

repeat_eos_struct_t::repeat_eos_struct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeat_eos_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_chunks = nullptr;
    _read();
}

void repeat_eos_struct_t::_read() {
    m_chunks = std::unique_ptr<std::vector<std::unique_ptr<chunk_t>>>(new std::vector<std::unique_ptr<chunk_t>>());
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_chunks->push_back(std::move(std::unique_ptr<chunk_t>(new chunk_t(m__io, this, m__root))));
            i++;
        }
    }
}

repeat_eos_struct_t::~repeat_eos_struct_t() {
    _clean_up();
}

void repeat_eos_struct_t::_clean_up() {
}

repeat_eos_struct_t::chunk_t::chunk_t(kaitai::kstream* p__io, repeat_eos_struct_t* p__parent, repeat_eos_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void repeat_eos_struct_t::chunk_t::_read() {
    m_offset = m__io->read_u4le();
    m_len = m__io->read_u4le();
}

repeat_eos_struct_t::chunk_t::~chunk_t() {
    _clean_up();
}

void repeat_eos_struct_t::chunk_t::_clean_up() {
}
