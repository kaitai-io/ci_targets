// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "enum_0.h"



enum_0_t::enum_0_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, enum_0_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void enum_0_t::_read() {
    m_pet_1 = static_cast<enum_0_t::animal_t>(m__io->read_u4le());
    m_pet_2 = static_cast<enum_0_t::animal_t>(m__io->read_u4le());
}

enum_0_t::~enum_0_t() {
}
