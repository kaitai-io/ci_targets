// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "index_sizes.h"

index_sizes_t::index_sizes_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, index_sizes_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_sizes = 0;
    m_bufs = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void index_sizes_t::_read() {
    m_qty = m__io->read_u4le();
    m_sizes = new std::vector<uint32_t>();
    const int l_sizes = qty();
    for (int i = 0; i < l_sizes; i++) {
        m_sizes->push_back(m__io->read_u4le());
    }
    m_bufs = new std::vector<std::string>();
    const int l_bufs = qty();
    for (int i = 0; i < l_bufs; i++) {
        m_bufs->push_back(kaitai::kstream::bytes_to_str(m__io->read_bytes(sizes()->at(i)), "ASCII"));
    }
}

index_sizes_t::~index_sizes_t() {
    _clean_up();
}

void index_sizes_t::_clean_up() {
    if (m_sizes) {
        delete m_sizes; m_sizes = 0;
    }
    if (m_bufs) {
        delete m_bufs; m_bufs = 0;
    }
}
