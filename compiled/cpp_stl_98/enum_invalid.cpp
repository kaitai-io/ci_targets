// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "enum_invalid.h"

enumInvalid_t::enumInvalid_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enumInvalid_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void enumInvalid_t::_read() {
    m_pet_1 = static_cast<enumInvalid_t::animal_t>(m__io->read_u1());
    m_pet_2 = static_cast<enumInvalid_t::animal_t>(m__io->read_u1());
}

enumInvalid_t::~enumInvalid_t() {
}
