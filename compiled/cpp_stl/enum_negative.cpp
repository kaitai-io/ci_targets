// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "enum_negative.h"



enum_negative_t::enum_negative_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, enum_negative_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void enum_negative_t::_read() {
    m_f1 = static_cast<enum_negative_t::constants_t>(m__io->read_s1());
    m_f2 = static_cast<enum_negative_t::constants_t>(m__io->read_s1());
}

enum_negative_t::~enum_negative_t() {
    // f1: EnumType(List(constants),Int1Type(true)), isArray=false, hasRaw=false, hasIO=false
    // f2: EnumType(List(constants),Int1Type(true)), isArray=false, hasRaw=false, hasIO=false
}
