// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "enum_to_i_invalid.h"
const std::set<std::underlying_type<enum_to_i_invalid_t::animal_t>::type> enum_to_i_invalid_t::_values_animal_t{102, 124};

enum_to_i_invalid_t::enum_to_i_invalid_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_to_i_invalid_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_one_lt_two = false;
    f_pet_2_eq_int_f = false;
    f_pet_2_eq_int_t = false;
    f_pet_2_i = false;
    f_pet_2_i_to_s = false;
    f_pet_2_mod = false;
    _read();
}

void enum_to_i_invalid_t::_read() {
    m_pet_1 = static_cast<enum_to_i_invalid_t::animal_t>(m__io->read_u1());
    m_pet_2 = static_cast<enum_to_i_invalid_t::animal_t>(m__io->read_u1());
}

enum_to_i_invalid_t::~enum_to_i_invalid_t() {
    _clean_up();
}

void enum_to_i_invalid_t::_clean_up() {
}

bool enum_to_i_invalid_t::one_lt_two() {
    if (f_one_lt_two)
        return m_one_lt_two;
    m_one_lt_two = pet_1() < pet_2();
    f_one_lt_two = true;
    return m_one_lt_two;
}

bool enum_to_i_invalid_t::pet_2_eq_int_f() {
    if (f_pet_2_eq_int_f)
        return m_pet_2_eq_int_f;
    m_pet_2_eq_int_f = pet_2() == 110;
    f_pet_2_eq_int_f = true;
    return m_pet_2_eq_int_f;
}

bool enum_to_i_invalid_t::pet_2_eq_int_t() {
    if (f_pet_2_eq_int_t)
        return m_pet_2_eq_int_t;
    m_pet_2_eq_int_t = pet_2() == 111;
    f_pet_2_eq_int_t = true;
    return m_pet_2_eq_int_t;
}

int32_t enum_to_i_invalid_t::pet_2_i() {
    if (f_pet_2_i)
        return m_pet_2_i;
    m_pet_2_i = pet_2();
    f_pet_2_i = true;
    return m_pet_2_i;
}

std::string enum_to_i_invalid_t::pet_2_i_to_s() {
    if (f_pet_2_i_to_s)
        return m_pet_2_i_to_s;
    m_pet_2_i_to_s = kaitai::kstream::to_string(pet_2());
    f_pet_2_i_to_s = true;
    return m_pet_2_i_to_s;
}

int32_t enum_to_i_invalid_t::pet_2_mod() {
    if (f_pet_2_mod)
        return m_pet_2_mod;
    m_pet_2_mod = pet_2() + 32768;
    f_pet_2_mod = true;
    return m_pet_2_mod;
}
