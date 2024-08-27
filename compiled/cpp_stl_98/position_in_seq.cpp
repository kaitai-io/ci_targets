// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "position_in_seq.h"

position_in_seq_t::position_in_seq_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, position_in_seq_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_numbers = 0;
    m_header = 0;
    f_header = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void position_in_seq_t::_read() {
    m_numbers = new std::vector<uint8_t>();
    const int l_numbers = header()->qty_numbers();
    for (int i = 0; i < l_numbers; i++) {
        m_numbers->push_back(m__io->read_u1());
    }
}

position_in_seq_t::~position_in_seq_t() {
    _clean_up();
}

void position_in_seq_t::_clean_up() {
    if (m_numbers) {
        delete m_numbers; m_numbers = 0;
    }
    if (f_header) {
        if (m_header) {
            delete m_header; m_header = 0;
        }
    }
}

position_in_seq_t::header_obj_t::header_obj_t(kaitai::kstream* p__io, position_in_seq_t* p__parent, position_in_seq_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void position_in_seq_t::header_obj_t::_read() {
    m_qty_numbers = m__io->read_u4le();
}

position_in_seq_t::header_obj_t::~header_obj_t() {
    _clean_up();
}

void position_in_seq_t::header_obj_t::_clean_up() {
}

position_in_seq_t::header_obj_t* position_in_seq_t::header() {
    if (f_header)
        return m_header;
    f_header = true;
    std::streampos _pos = m__io->pos();
    m__io->seek(16);
    m_header = new header_obj_t(m__io, this, m__root);
    m__io->seek(_pos);
    return m_header;
}
