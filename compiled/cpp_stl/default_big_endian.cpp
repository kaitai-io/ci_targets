// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "default_big_endian.h"

#include <iostream>
#include <fstream>

default_big_endian_t::default_big_endian_t(kaitai::kstream *p_io, kaitai::kstruct *p_parent, default_big_endian_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    m_one = m__io->read_u4be();
}

default_big_endian_t::~default_big_endian_t() {
}
