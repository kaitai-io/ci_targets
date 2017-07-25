// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "enum_fancy.h"



enum_fancy_t::enum_fancy_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, enum_fancy_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void enum_fancy_t::_read() {
    m_pet_1 = static_cast<enum_fancy_t::animal_t>(m__io->read_u4le());
    m_pet_2 = static_cast<enum_fancy_t::animal_t>(m__io->read_u4le());
}

enum_fancy_t::~enum_fancy_t() {
    // pet_1: EnumType(List(animal),IntMultiType(false,Width4,Some(LittleEndian))), isArray=false, hasRaw=false, hasIO=false
    // pet_2: EnumType(List(animal),IntMultiType(false,Width4,Some(LittleEndian))), isArray=false, hasRaw=false, hasIO=false
}
