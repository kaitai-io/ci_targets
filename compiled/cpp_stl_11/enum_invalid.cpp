// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "enum_invalid.h"

enum_invalid_t::enum_invalid_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_invalid_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void enum_invalid_t::_read() {
    m_pet_1 = static_cast<enum_invalid_t::animal_t>(m__io->read_u1());
    m_pet_2 = static_cast<enum_invalid_t::animal_t>(m__io->read_u1());
}

enum_invalid_t::~enum_invalid_t() {
    _clean_up();
}

void enum_invalid_t::_clean_up() {
}
