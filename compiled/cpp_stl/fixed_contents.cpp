// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "fixed_contents.h"

#include <iostream>
#include <fstream>

fixed_contents_t::fixed_contents_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, fixed_contents_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    m_normal = m__io->ensure_fixed_contents(std::string("\x50\x41\x43\x4B\x2D\x31", 6));
    m_high_bit_8 = m__io->ensure_fixed_contents(std::string("\xFF\xFF", 2));
}

fixed_contents_t::~fixed_contents_t() {
}
