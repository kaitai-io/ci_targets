// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "repeat_eos_struct.h"



repeat_eos_struct_t::repeat_eos_struct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeat_eos_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_chunks = 0;
    _read();
}

void repeat_eos_struct_t::_read() {
    m_chunks = new std::vector<chunk_t*>();
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_chunks->push_back(new chunk_t(m__io, this, m__root));
            i++;
        }
    }
}

repeat_eos_struct_t::~repeat_eos_struct_t() {
    for (std::vector<chunk_t*>::iterator it = m_chunks->begin(); it != m_chunks->end(); ++it) {
        delete *it;
    }
    delete m_chunks;
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
}
