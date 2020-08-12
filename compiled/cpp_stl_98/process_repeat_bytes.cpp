// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "process_repeat_bytes.h"

process_repeat_bytes_t::process_repeat_bytes_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, process_repeat_bytes_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_bufs = 0;
    m__raw_bufs = 0;
    m__io_bufs = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void process_repeat_bytes_t::_read() {
    int l_bufs = 2;
    m__raw_bufs = new std::vector<std::string>();
    m__raw_bufs->reserve(l_bufs);
    m_bufs = new std::vector<std::string>();
    m_bufs->reserve(l_bufs);
    for (int i = 0; i < l_bufs; i++) {
        m__raw_bufs->push_back(m__io->read_bytes(5));
        m_bufs->push_back(kaitai::kstream::process_xor_one(m__raw_bufs->at(m__raw_bufs->size() - 1), 158));
    }
}

process_repeat_bytes_t::~process_repeat_bytes_t() {
    _clean_up();
}

void process_repeat_bytes_t::_clean_up() {
    if (m__raw_bufs) {
        delete m__raw_bufs; m__raw_bufs = 0;
    }
    if (m_bufs) {
        delete m_bufs; m_bufs = 0;
    }
}
