// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "bits_byte_aligned.h"



bits_byte_aligned_t::bits_byte_aligned_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, bits_byte_aligned_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void bits_byte_aligned_t::_read() {
    m_one = m__io->read_bits_int(6);
    m__io->align_to_byte();
    m_byte_1 = m__io->read_u1();
    m_two = m__io->read_bits_int(3);
    m_three = m__io->read_bits_int(1);
    m__io->align_to_byte();
    m_byte_2 = m__io->read_u1();
    m_four = m__io->read_bits_int(14);
    m__io->align_to_byte();
    m_byte_3 = m__io->read_bytes(1);
    m_full_byte = m__io->read_bits_int(8);
    m__io->align_to_byte();
    m_byte_4 = m__io->read_u1();
}

bits_byte_aligned_t::~bits_byte_aligned_t() {
    // one: BitsType(6), isArray=false, hasRaw=false, hasIO=false
    // byte_1: Int1Type(false), isArray=false, hasRaw=false, hasIO=false
    // two: BitsType(3), isArray=false, hasRaw=false, hasIO=false
    // three: BitsType1, isArray=false, hasRaw=false, hasIO=false
    // byte_2: Int1Type(false), isArray=false, hasRaw=false, hasIO=false
    // four: BitsType(14), isArray=false, hasRaw=false, hasIO=false
    // byte_3: BytesLimitType(IntNum(1),None,false,None,None), isArray=false, hasRaw=false, hasIO=false
    // full_byte: BitsType(8), isArray=false, hasRaw=false, hasIO=false
    // byte_4: Int1Type(false), isArray=false, hasRaw=false, hasIO=false
}
