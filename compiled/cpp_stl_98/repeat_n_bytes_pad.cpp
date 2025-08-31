// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_n_bytes_pad.h"

repeat_n_bytes_pad_t::repeat_n_bytes_pad_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeat_n_bytes_pad_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_records = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void repeat_n_bytes_pad_t::_read() {
    m_records = new std::vector<std::string>();
    const int l_records = 3;
    for (int i = 0; i < l_records; i++) {
        m_records->push_back(kaitai::kstream::bytes_strip_right(m__io->read_bytes(5), 170));
    }
}

repeat_n_bytes_pad_t::~repeat_n_bytes_pad_t() {
    _clean_up();
}

void repeat_n_bytes_pad_t::_clean_up() {
    if (m_records) {
        delete m_records; m_records = 0;
    }
}
