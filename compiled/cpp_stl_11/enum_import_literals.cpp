// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "enum_import_literals.h"

enum_import_literals_t::enum_import_literals_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_import_literals_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_pet_1_eq = false;
    f_pet_1_to_i = false;
    f_pet_2 = false;
    _read();
}

void enum_import_literals_t::_read() {
}

enum_import_literals_t::~enum_import_literals_t() {
    _clean_up();
}

void enum_import_literals_t::_clean_up() {
}

bool enum_import_literals_t::pet_1_eq() {
    if (f_pet_1_eq)
        return m_pet_1_eq;
    m_pet_1_eq = ((true) ? (enum_0_t::ANIMAL_CHICKEN) : (enum_0_t::ANIMAL_DOG)) == enum_0_t::ANIMAL_CHICKEN;
    f_pet_1_eq = true;
    return m_pet_1_eq;
}

int32_t enum_import_literals_t::pet_1_to_i() {
    if (f_pet_1_to_i)
        return m_pet_1_to_i;
    m_pet_1_to_i = enum_0_t::ANIMAL_CAT;
    f_pet_1_to_i = true;
    return m_pet_1_to_i;
}

enum_deep_t::container1_t::container2_t::animal_t enum_import_literals_t::pet_2() {
    if (f_pet_2)
        return m_pet_2;
    m_pet_2 = enum_deep_t::container1_t::container2_t::ANIMAL_HARE;
    f_pet_2 = true;
    return m_pet_2;
}
