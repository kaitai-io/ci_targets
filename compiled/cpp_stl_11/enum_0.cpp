// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "enum_0.h"



enum_0_t::enum_0_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_0_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void enum_0_t::_read() {
    m_pet_1 = static_cast<enum_0_t::animal_t>(m__io->read_u4le());
    m_pet_2 = static_cast<enum_0_t::animal_t>(m__io->read_u4le());
}

enum_0_t::~enum_0_t() {
}
