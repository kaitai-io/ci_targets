// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "enum_long_range_u.h"

enum_long_range_u_t::enum_long_range_u_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_long_range_u_t* /* p__root */) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void enum_long_range_u_t::_read() {
    m_f1 = static_cast<enum_long_range_u_t::constants_t>(m__io->read_u8be());
    m_f2 = static_cast<enum_long_range_u_t::constants_t>(m__io->read_u8be());
    m_f3 = static_cast<enum_long_range_u_t::constants_t>(m__io->read_u8be());
    m_f4 = static_cast<enum_long_range_u_t::constants_t>(m__io->read_u8be());
}

enum_long_range_u_t::~enum_long_range_u_t() {
}
