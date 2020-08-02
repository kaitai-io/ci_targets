// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "bits_simple_le.h"

bits_simple_le_t::bits_simple_le_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, bits_simple_le_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_test_if_b1 = false;
    _read();
}

void bits_simple_le_t::_read() {
    m_byte_1 = m__io->read_bits_int_le(8);
    m_byte_2 = m__io->read_bits_int_le(8);
    m_bits_a = m__io->read_bits_int_le(1);
    m_bits_b = m__io->read_bits_int_le(3);
    m_bits_c = m__io->read_bits_int_le(4);
    m_large_bits_1 = m__io->read_bits_int_le(10);
    m_spacer = m__io->read_bits_int_le(3);
    m_large_bits_2 = m__io->read_bits_int_le(11);
    m__io->align_to_byte();
    m_normal_s2 = m__io->read_s2be();
    m_byte_8_9_10 = m__io->read_bits_int_le(24);
    m_byte_11_to_14 = m__io->read_bits_int_le(32);
    m_byte_15_to_19 = m__io->read_bits_int_le(40);
    m_byte_20_to_27 = m__io->read_bits_int_le(64);
}

bits_simple_le_t::~bits_simple_le_t() {
    _clean_up();
}

void bits_simple_le_t::_clean_up() {
}

int8_t bits_simple_le_t::test_if_b1() {
    if (f_test_if_b1)
        return m_test_if_b1;
    n_test_if_b1 = true;
    if (bits_a() == true) {
        n_test_if_b1 = false;
        m_test_if_b1 = 123;
    }
    f_test_if_b1 = true;
    return m_test_if_b1;
}
