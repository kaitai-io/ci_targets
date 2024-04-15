// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "enum_of_value_inst.h"

enum_of_value_inst_t::enum_of_value_inst_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_of_value_inst_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_pet_3 = false;
    f_pet_4 = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void enum_of_value_inst_t::_read() {
    m_pet_1 = static_cast<enum_of_value_inst_t::animal_t>(m__io->read_u4le());
    m_pet_2 = static_cast<enum_of_value_inst_t::animal_t>(m__io->read_u4le());
}

enum_of_value_inst_t::~enum_of_value_inst_t() {
    _clean_up();
}

void enum_of_value_inst_t::_clean_up() {
}

enum_of_value_inst_t::animal_t enum_of_value_inst_t::pet_3() {
    if (f_pet_3)
        return m_pet_3;
    m_pet_3 = static_cast<enum_of_value_inst_t::animal_t>(((pet_1() == enum_of_value_inst_t::ANIMAL_CAT) ? (4) : (12)));
    f_pet_3 = true;
    return m_pet_3;
}

enum_of_value_inst_t::animal_t enum_of_value_inst_t::pet_4() {
    if (f_pet_4)
        return m_pet_4;
    m_pet_4 = ((pet_1() == enum_of_value_inst_t::ANIMAL_CAT) ? (enum_of_value_inst_t::ANIMAL_DOG) : (enum_of_value_inst_t::ANIMAL_CHICKEN));
    f_pet_4 = true;
    return m_pet_4;
}
