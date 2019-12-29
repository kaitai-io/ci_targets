// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "index_sizes.h"

index_sizes_t::index_sizes_t(kaitai::kstream* p__io, std::unique_ptr<kaitai::kstruct> p__parent, index_sizes_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_sizes = nullptr;
    m_bufs = nullptr;
    _read();
}

void index_sizes_t::_read() {
    m_qty = m__io->read_u4le();
    int l_sizes = qty();
    m_sizes = std::unique_ptr<std::vector<uint32_t>>(new std::vector<uint32_t>());
    m_sizes->reserve(l_sizes);
    for (int i = 0; i < l_sizes; i++) {
        m_sizes->push_back(std::move(m__io->read_u4le()));
    }
    int l_bufs = qty();
    m_bufs = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    m_bufs->reserve(l_bufs);
    for (int i = 0; i < l_bufs; i++) {
        m_bufs->push_back(std::move(kaitai::kstream::bytes_to_str(m__io->read_bytes(sizes()->at(i)), std::string("ASCII"))));
    }
}

index_sizes_t::~index_sizes_t() {
}
