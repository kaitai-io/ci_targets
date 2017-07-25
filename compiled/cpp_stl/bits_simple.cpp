// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "bits_simple.h"



bits_simple_t::bits_simple_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, bits_simple_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    f_test_if_b1 = false;
    _read();
}

void bits_simple_t::_read() {
    m_byte_1 = m__io->read_bits_int(8);
    m_byte_2 = m__io->read_bits_int(8);
    m_bits_a = m__io->read_bits_int(1);
    m_bits_b = m__io->read_bits_int(3);
    m_bits_c = m__io->read_bits_int(4);
    m_large_bits_1 = m__io->read_bits_int(10);
    m_spacer = m__io->read_bits_int(3);
    m_large_bits_2 = m__io->read_bits_int(11);
    m__io->align_to_byte();
    m_normal_s2 = m__io->read_s2be();
    m_byte_8_9_10 = m__io->read_bits_int(24);
    m_byte_11_to_14 = m__io->read_bits_int(32);
    m_byte_15_to_19 = m__io->read_bits_int(40);
    m_byte_20_to_27 = m__io->read_bits_int(64);
}

bits_simple_t::~bits_simple_t() {
    // byte_1: BitsType(8), isArray=false, hasRaw=false, hasIO=false
    // byte_2: BitsType(8), isArray=false, hasRaw=false, hasIO=false
    // bits_a: BitsType1, isArray=false, hasRaw=false, hasIO=false
    // bits_b: BitsType(3), isArray=false, hasRaw=false, hasIO=false
    // bits_c: BitsType(4), isArray=false, hasRaw=false, hasIO=false
    // large_bits_1: BitsType(10), isArray=false, hasRaw=false, hasIO=false
    // spacer: BitsType(3), isArray=false, hasRaw=false, hasIO=false
    // large_bits_2: BitsType(11), isArray=false, hasRaw=false, hasIO=false
    // normal_s2: IntMultiType(true,Width2,Some(BigEndian)), isArray=false, hasRaw=false, hasIO=false
    // byte_8_9_10: BitsType(24), isArray=false, hasRaw=false, hasIO=false
    // byte_11_to_14: BitsType(32), isArray=false, hasRaw=false, hasIO=false
    // byte_15_to_19: BitsType(40), isArray=false, hasRaw=false, hasIO=false
    // byte_20_to_27: BitsType(64), isArray=false, hasRaw=false, hasIO=false
}

int8_t bits_simple_t::test_if_b1() {
    if (f_test_if_b1)
        return m_test_if_b1;
    n_test_if_b1 = true;
    if (bits_a() == false) {
        n_test_if_b1 = false;
        m_test_if_b1 = 123;
    }
    f_test_if_b1 = true;
    return m_test_if_b1;
}
