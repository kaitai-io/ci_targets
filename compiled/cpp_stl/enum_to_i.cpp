// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "enum_to_i.h"

#include <iostream>
#include <fstream>

enum_to_i_t::enum_to_i_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, enum_to_i_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    f_pet_1_i = false;
    f_pet_1_mod = false;
    f_one_lt_two = false;
    m_pet_1 = static_cast<enum_to_i_t::animal_t>(m__io->read_u4le());
    m_pet_2 = static_cast<enum_to_i_t::animal_t>(m__io->read_u4le());
}

enum_to_i_t::~enum_to_i_t() {
}

int32_t enum_to_i_t::pet_1_i() {
    if (f_pet_1_i)
        return m_pet_1_i;
    m_pet_1_i = pet_1();
    f_pet_1_i = true;
    return m_pet_1_i;
}

int32_t enum_to_i_t::pet_1_mod() {
    if (f_pet_1_mod)
        return m_pet_1_mod;
    m_pet_1_mod = (pet_1() + 32768);
    f_pet_1_mod = true;
    return m_pet_1_mod;
}

bool enum_to_i_t::one_lt_two() {
    if (f_one_lt_two)
        return m_one_lt_two;
    m_one_lt_two = pet_1() < pet_2();
    f_one_lt_two = true;
    return m_one_lt_two;
}
