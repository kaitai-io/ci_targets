// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "position_in_seq.h"

position_in_seq_t::position_in_seq_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, position_in_seq_t* /* p__root */) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_numbers = 0;
    m_header = 0;
    f_header = false;
    _read();
}

void position_in_seq_t::_read() {
    size_t l_numbers = header()->qty_numbers();
    m_numbers = new std::vector<uint8_t>();
    m_numbers->reserve(l_numbers);
    for (size_t i = 0; i < l_numbers; i++) {
        m_numbers->push_back(m__io->read_u1());
    }
}

position_in_seq_t::~position_in_seq_t() {
    delete m_numbers;
    if (f_header) {
        delete m_header;
    }
}

position_in_seq_t::header_obj_t::header_obj_t(kaitai::kstream* p__io, position_in_seq_t* p__parent, position_in_seq_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void position_in_seq_t::header_obj_t::_read() {
    m_qty_numbers = m__io->read_u4le();
}

position_in_seq_t::header_obj_t::~header_obj_t() {
}

position_in_seq_t::header_obj_t* position_in_seq_t::header() {
    if (f_header)
        return m_header;
    std::streampos _pos = m__io->pos();
    m__io->seek(kaitai::to_signed(16));
    m_header = new header_obj_t(m__io, this, m__root);
    m__io->seek(_pos);
    f_header = true;
    return m_header;
}
