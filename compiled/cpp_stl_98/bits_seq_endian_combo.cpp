// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "bits_seq_endian_combo.h"

bits_seq_endian_combo_t::bits_seq_endian_combo_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, bits_seq_endian_combo_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;

    try {
        _read();
    } catch(...) {
        // this->~bits_seq_endian_combo_t();
        throw;
    }
}

void bits_seq_endian_combo_t::_read() {
    m_be1 = m__io->read_bits_int_be(6);
    m_be2 = m__io->read_bits_int_be(10);
    m_le3 = m__io->read_bits_int_le(8);
    m_be4 = m__io->read_bits_int_be(8);
    m_le5 = m__io->read_bits_int_le(5);
    m_le6 = m__io->read_bits_int_le(6);
    m_le7 = m__io->read_bits_int_le(5);
    m_be8 = m__io->read_bits_int_be(1);
}

bits_seq_endian_combo_t::~bits_seq_endian_combo_t() {
}
