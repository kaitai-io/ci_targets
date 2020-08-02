// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "default_big_endian.h"

default_big_endian_t::default_big_endian_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, default_big_endian_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void default_big_endian_t::_read() {
    m_one = m__io->read_u4be();
}

default_big_endian_t::~default_big_endian_t() {
    _clean_up();
}

void default_big_endian_t::_clean_up() {
}
