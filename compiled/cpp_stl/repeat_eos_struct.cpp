// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_eos_struct.h"

#include <iostream>
#include <fstream>

repeat_eos_struct_t::repeat_eos_struct_t(kaitai::kstream *p_io, kaitai::kstruct *p_parent, repeat_eos_struct_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    m_chunks = new std::vector<chunk_t*>();
    while (!m__io->is_eof()) {
        m_chunks->push_back(new chunk_t(m__io, this, m__root));
    }
}

repeat_eos_struct_t::~repeat_eos_struct_t() {
    for (std::vector<chunk_t*>::iterator it = m_chunks->begin(); it != m_chunks->end(); ++it) {
        delete *it;
    }
    delete m_chunks;
}

repeat_eos_struct_t::chunk_t::chunk_t(kaitai::kstream *p_io, repeat_eos_struct_t *p_parent, repeat_eos_struct_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m_offset = m__io->read_u4le();
    m_len = m__io->read_u4le();
}

repeat_eos_struct_t::chunk_t::~chunk_t() {
}
