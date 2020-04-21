// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "default_big_bit_endian_implicit.h"

default_big_bit_endian_implicit_t::default_big_bit_endian_implicit_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, default_big_bit_endian_implicit_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void default_big_bit_endian_implicit_t::_read() {
    m_one = m__io->read_bits_int(20);
}

default_big_bit_endian_implicit_t::~default_big_bit_endian_implicit_t() {
}
