// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "enum_of_value_inst.h"

enumOfValueInst_t::enumOfValueInst_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enumOfValueInst_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_pet_3 = false;
    f_pet_4 = false;
    _read();
}

void enumOfValueInst_t::_read() {
    m_pet_1 = static_cast<enumOfValueInst_t::animal_t>(m__io->read_u4le());
    m_pet_2 = static_cast<enumOfValueInst_t::animal_t>(m__io->read_u4le());
}

enumOfValueInst_t::~enumOfValueInst_t() {
}

enumOfValueInst_t::animal_t enumOfValueInst_t::pet_3() {
    if (f_pet_3)
        return m_pet_3;
    m_pet_3 = static_cast<enumOfValueInst_t::animal_t>(((pet_1() == enumOfValueInst_t::ANIMAL_CAT) ? (4) : (12)));
    f_pet_3 = true;
    return m_pet_3;
}

enumOfValueInst_t::animal_t enumOfValueInst_t::pet_4() {
    if (f_pet_4)
        return m_pet_4;
    m_pet_4 = ((pet_1() == enumOfValueInst_t::ANIMAL_CAT) ? (enumOfValueInst_t::ANIMAL_DOG) : (enumOfValueInst_t::ANIMAL_CHICKEN));
    f_pet_4 = true;
    return m_pet_4;
}
