// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "bits_byte_aligned.h"

bits_byte_aligned_t::bits_byte_aligned_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, bits_byte_aligned_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    _read();
}

void bits_byte_aligned_t::_read() {
    m_one = m__io->read_bits_int_be(6);
    m_byte_1 = m__io->read_u1();
    m_two = m__io->read_bits_int_be(3);
    m_three = m__io->read_bits_int_be(1);
    m_byte_2 = m__io->read_bytes(1);
    m_four = m__io->read_bits_int_be(14);
    m__raw_byte_3 = m__io->read_bytes(3);
    m__io__raw_byte_3 = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_byte_3));
    m_byte_3 = std::unique_ptr<foo_t>(new foo_t(m__io__raw_byte_3.get(), this, m__root));
    m_full_byte = m__io->read_bits_int_be(8);
    m_byte_4 = m__io->read_u1();
    m_five = m__io->read_bits_int_be(22);
    m_bytes_term = m__io->read_bytes_term(69, true, true, true);
    m_six = m__io->read_bits_int_be(8);
}

bits_byte_aligned_t::~bits_byte_aligned_t() {}

bits_byte_aligned_t::foo_t::foo_t(kaitai::kstream* p__io, bits_byte_aligned_t* p__parent, bits_byte_aligned_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void bits_byte_aligned_t::foo_t::_read() {
    m_inner = m__io->read_bits_int_be(19);
}

bits_byte_aligned_t::foo_t::~foo_t() {}
