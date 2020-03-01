// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "enum_deep_literals.h"

enumDeepLiterals_t::enumDeepLiterals_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enumDeepLiterals_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_is_pet_1_ok = false;
    f_is_pet_2_ok = false;
    _read();
}

void enumDeepLiterals_t::_read() {
    m_pet_1 = static_cast<enumDeepLiterals_t::container1_t::animal_t>(m__io->read_u4le());
    m_pet_2 = static_cast<enumDeepLiterals_t::container1_t::container2_t::animal_t>(m__io->read_u4le());
}

enumDeepLiterals_t::~enumDeepLiterals_t() {
}

enumDeepLiterals_t::container1_t::container1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enumDeepLiterals_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void enumDeepLiterals_t::container1_t::_read() {
}

enumDeepLiterals_t::container1_t::~container1_t() {
}

enumDeepLiterals_t::container1_t::container2_t::container2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enumDeepLiterals_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void enumDeepLiterals_t::container1_t::container2_t::_read() {
}

enumDeepLiterals_t::container1_t::container2_t::~container2_t() {
}

bool enumDeepLiterals_t::is_pet_1_ok() {
    if (f_is_pet_1_ok)
        return m_is_pet_1_ok;
    m_is_pet_1_ok = pet_1() == enumDeepLiterals_t::container1_t::ANIMAL_CAT;
    f_is_pet_1_ok = true;
    return m_is_pet_1_ok;
}

bool enumDeepLiterals_t::is_pet_2_ok() {
    if (f_is_pet_2_ok)
        return m_is_pet_2_ok;
    m_is_pet_2_ok = pet_2() == enumDeepLiterals_t::container1_t::container2_t::ANIMAL_HARE;
    f_is_pet_2_ok = true;
    return m_is_pet_2_ok;
}
