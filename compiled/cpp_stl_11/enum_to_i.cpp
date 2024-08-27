// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "enum_to_i.h"
const std::set<enum_to_i_t::animal_t> enum_to_i_t::_values_animal_t{
    enum_to_i_t::ANIMAL_DOG,
    enum_to_i_t::ANIMAL_CAT,
    enum_to_i_t::ANIMAL_CHICKEN,
};
bool enum_to_i_t::_is_defined_animal_t(enum_to_i_t::animal_t v) {
    return enum_to_i_t::_values_animal_t.find(v) != enum_to_i_t::_values_animal_t.end();
}

enum_to_i_t::enum_to_i_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_to_i_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_one_lt_two = false;
    f_pet_1_eq_int = false;
    f_pet_1_i = false;
    f_pet_1_i_to_s = false;
    f_pet_1_mod = false;
    f_pet_2_eq_int = false;
    _read();
}

void enum_to_i_t::_read() {
    m_pet_1 = static_cast<enum_to_i_t::animal_t>(m__io->read_u4le());
    m_pet_2 = static_cast<enum_to_i_t::animal_t>(m__io->read_u4le());
}

enum_to_i_t::~enum_to_i_t() {
    _clean_up();
}

void enum_to_i_t::_clean_up() {
}

bool enum_to_i_t::one_lt_two() {
    if (f_one_lt_two)
        return m_one_lt_two;
    f_one_lt_two = true;
    m_one_lt_two = pet_1() < pet_2();
    return m_one_lt_two;
}

bool enum_to_i_t::pet_1_eq_int() {
    if (f_pet_1_eq_int)
        return m_pet_1_eq_int;
    f_pet_1_eq_int = true;
    m_pet_1_eq_int = pet_1() == 7;
    return m_pet_1_eq_int;
}

int32_t enum_to_i_t::pet_1_i() {
    if (f_pet_1_i)
        return m_pet_1_i;
    f_pet_1_i = true;
    m_pet_1_i = pet_1();
    return m_pet_1_i;
}

std::string enum_to_i_t::pet_1_i_to_s() {
    if (f_pet_1_i_to_s)
        return m_pet_1_i_to_s;
    f_pet_1_i_to_s = true;
    m_pet_1_i_to_s = kaitai::kstream::to_string(pet_1());
    return m_pet_1_i_to_s;
}

int32_t enum_to_i_t::pet_1_mod() {
    if (f_pet_1_mod)
        return m_pet_1_mod;
    f_pet_1_mod = true;
    m_pet_1_mod = pet_1() + 32768;
    return m_pet_1_mod;
}

bool enum_to_i_t::pet_2_eq_int() {
    if (f_pet_2_eq_int)
        return m_pet_2_eq_int;
    f_pet_2_eq_int = true;
    m_pet_2_eq_int = pet_2() == 5;
    return m_pet_2_eq_int;
}
