// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "fixed_contents.h"



fixed_contents_t::fixed_contents_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, fixed_contents_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void fixed_contents_t::_read() {
    m_normal = m__io->ensure_fixed_contents(std::string("\x50\x41\x43\x4B\x2D\x31", 6));
    m_high_bit_8 = m__io->ensure_fixed_contents(std::string("\xFF\xFF", 2));
}

fixed_contents_t::~fixed_contents_t() {
}
