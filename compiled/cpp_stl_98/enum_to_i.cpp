// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "enum_to_i.h"

enum_to_i_t::enum_to_i_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_to_i_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_pet_1_i = false;
    f_pet_1_mod = false;
    f_one_lt_two = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
