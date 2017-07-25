// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_n_struct.h"



repeat_n_struct_t::repeat_n_struct_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, repeat_n_struct_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
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
    // qty: IntMultiType(false,Width4,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // chunks: UserTypeInstream(List(chunk),None), isArray=true, hasRaw=false, hasIO=false
    for (std::vector<chunk_t*>::iterator it = m_chunks->begin(); it != m_chunks->end(); ++it) {
        delete *it;
    }
    delete m_chunks;
}

repeat_n_struct_t::chunk_t::chunk_t(kaitai::kstream *p_io, repeat_n_struct_t* p_parent, repeat_n_struct_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void repeat_n_struct_t::chunk_t::_read() {
    m_offset = m__io->read_u4le();
    m_len = m__io->read_u4le();
}

repeat_n_struct_t::chunk_t::~chunk_t() {
    // offset: IntMultiType(false,Width4,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // len: IntMultiType(false,Width4,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
}
