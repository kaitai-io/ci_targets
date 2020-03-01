// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "default_big_endian.h"

defaultBigEndian_t::defaultBigEndian_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, defaultBigEndian_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void defaultBigEndian_t::_read() {
    m_one = m__io->read_u4be();
}

defaultBigEndian_t::~defaultBigEndian_t() {
}
