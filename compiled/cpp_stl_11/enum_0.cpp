// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "enum_0.h"
const std::set<enum_0_t::animal_t> enum_0_t::_values_animal_t{
    enum_0_t::ANIMAL_DOG,
    enum_0_t::ANIMAL_CAT,
    enum_0_t::ANIMAL_CHICKEN,
};
bool enum_0_t::_is_defined_animal_t(enum_0_t::animal_t v) {
    return enum_0_t::_values_animal_t.find(v) != enum_0_t::_values_animal_t.end();
}

enum_0_t::enum_0_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_0_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    _read();
}

void enum_0_t::_read() {
    m_pet_1 = static_cast<enum_0_t::animal_t>(m__io->read_u4le());
    m_pet_2 = static_cast<enum_0_t::animal_t>(m__io->read_u4le());
}

enum_0_t::~enum_0_t() {
    _clean_up();
}

void enum_0_t::_clean_up() {
}
