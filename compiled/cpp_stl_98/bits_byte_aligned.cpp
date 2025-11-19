// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "bits_byte_aligned.h"

bits_byte_aligned_t::bits_byte_aligned_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, bits_byte_aligned_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void bits_byte_aligned_t::_read() {
    m_one = m__io->read_bits_int_be(6);
    m_byte_1 = m__io->read_u1();
    m_two = m__io->read_bits_int_be(3);
    m_three = m__io->read_bits_int_be(1);
    m_byte_2 = m__io->read_u1();
    m_four = m__io->read_bits_int_be(14);
    m_byte_3 = m__io->read_bytes(1);
    m_full_byte = m__io->read_bits_int_be(8);
    m_byte_4 = m__io->read_u1();
}

bits_byte_aligned_t::~bits_byte_aligned_t() {
    _clean_up();
}

void bits_byte_aligned_t::_clean_up() {
}
