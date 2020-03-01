// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "enum_int_range_u.h"

enumIntRangeU_t::enumIntRangeU_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enumIntRangeU_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void enumIntRangeU_t::_read() {
    m_f1 = static_cast<enumIntRangeU_t::constants_t>(m__io->read_u4be());
    m_f2 = static_cast<enumIntRangeU_t::constants_t>(m__io->read_u4be());
}

enumIntRangeU_t::~enumIntRangeU_t() {
}
