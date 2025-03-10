// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "enum_to_i_invalid.h"
std::set<enum_to_i_invalid_t::animal_t> enum_to_i_invalid_t::_build_values_animal_t() {
    std::set<enum_to_i_invalid_t::animal_t> _t;
    _t.insert(enum_to_i_invalid_t::ANIMAL_DOG);
    _t.insert(enum_to_i_invalid_t::ANIMAL_CAT);
    return _t;
}
const std::set<enum_to_i_invalid_t::animal_t> enum_to_i_invalid_t::_values_animal_t = enum_to_i_invalid_t::_build_values_animal_t();
bool enum_to_i_invalid_t::_is_defined_animal_t(enum_to_i_invalid_t::animal_t v) {
    return enum_to_i_invalid_t::_values_animal_t.find(v) != enum_to_i_invalid_t::_values_animal_t.end();
}

enum_to_i_invalid_t::enum_to_i_invalid_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_to_i_invalid_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_one_lt_two = false;
    f_pet_2_eq_int_f = false;
    f_pet_2_eq_int_t = false;
    f_pet_2_i = false;
    f_pet_2_i_to_s = false;
    f_pet_2_mod = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
    f_one_lt_two = true;
    m_one_lt_two = pet_1() < pet_2();
    return m_one_lt_two;
}

bool enum_to_i_invalid_t::pet_2_eq_int_f() {
    if (f_pet_2_eq_int_f)
        return m_pet_2_eq_int_f;
    f_pet_2_eq_int_f = true;
    m_pet_2_eq_int_f = pet_2() == 110;
    return m_pet_2_eq_int_f;
}

bool enum_to_i_invalid_t::pet_2_eq_int_t() {
    if (f_pet_2_eq_int_t)
        return m_pet_2_eq_int_t;
    f_pet_2_eq_int_t = true;
    m_pet_2_eq_int_t = pet_2() == 111;
    return m_pet_2_eq_int_t;
}

int32_t enum_to_i_invalid_t::pet_2_i() {
    if (f_pet_2_i)
        return m_pet_2_i;
    f_pet_2_i = true;
    m_pet_2_i = pet_2();
    return m_pet_2_i;
}

std::string enum_to_i_invalid_t::pet_2_i_to_s() {
    if (f_pet_2_i_to_s)
        return m_pet_2_i_to_s;
    f_pet_2_i_to_s = true;
    m_pet_2_i_to_s = kaitai::kstream::to_string(pet_2());
    return m_pet_2_i_to_s;
}

int32_t enum_to_i_invalid_t::pet_2_mod() {
    if (f_pet_2_mod)
        return m_pet_2_mod;
    f_pet_2_mod = true;
    m_pet_2_mod = pet_2() + 32768;
    return m_pet_2_mod;
}
