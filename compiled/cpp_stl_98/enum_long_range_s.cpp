// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "enum_long_range_s.h"

enumLongRangeS_t::enumLongRangeS_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enumLongRangeS_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void enumLongRangeS_t::_read() {
    m_f1 = static_cast<enumLongRangeS_t::constants_t>(m__io->read_s8be());
    m_f2 = static_cast<enumLongRangeS_t::constants_t>(m__io->read_s8be());
    m_f3 = static_cast<enumLongRangeS_t::constants_t>(m__io->read_s8be());
    m_f4 = static_cast<enumLongRangeS_t::constants_t>(m__io->read_s8be());
    m_f5 = static_cast<enumLongRangeS_t::constants_t>(m__io->read_s8be());
    m_f6 = static_cast<enumLongRangeS_t::constants_t>(m__io->read_s8be());
    m_f7 = static_cast<enumLongRangeS_t::constants_t>(m__io->read_s8be());
}

enumLongRangeS_t::~enumLongRangeS_t() {
}
