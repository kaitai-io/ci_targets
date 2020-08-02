// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "repeat_n_struct.h"

repeat_n_struct_t::repeat_n_struct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeat_n_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_chunks = 0;

    try {
        _read();
    } catch(...) {
        _cleanUp();
        throw;
    }
}

void repeat_n_struct_t::_read() {
    m_qty = m__io->read_u4le();
    int l_chunks = qty();
    m_chunks = new std::vector<chunk_t*>();
    m_chunks->reserve(l_chunks);
    for (int i = 0; i < l_chunks; i++) {
        m_chunks->push_back(new chunk_t(m__io, this, m__root));
    }
}

repeat_n_struct_t::~repeat_n_struct_t() {
    _cleanUp();
}

void repeat_n_struct_t::_cleanUp() {
    if (m_chunks) {
        for (std::vector<chunk_t*>::iterator it = m_chunks->begin(); it != m_chunks->end(); ++it) {
            delete *it;
        }
        delete m_chunks; m_chunks = 0;
    }
}

repeat_n_struct_t::chunk_t::chunk_t(kaitai::kstream* p__io, repeat_n_struct_t* p__parent, repeat_n_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _cleanUp();
        throw;
    }
}

void repeat_n_struct_t::chunk_t::_read() {
    m_offset = m__io->read_u4le();
    m_len = m__io->read_u4le();
}

repeat_n_struct_t::chunk_t::~chunk_t() {
    _cleanUp();
}

void repeat_n_struct_t::chunk_t::_cleanUp() {
}
