// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "enum_negative.h"

enumNegative_t::enumNegative_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enumNegative_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void enumNegative_t::_read() {
    m_f1 = static_cast<enumNegative_t::constants_t>(m__io->read_s1());
    m_f2 = static_cast<enumNegative_t::constants_t>(m__io->read_s1());
}

enumNegative_t::~enumNegative_t() {
}
