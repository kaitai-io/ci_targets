// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "enum_deep_literals.h"

enum_deep_literals_t::enum_deep_literals_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_deep_literals_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_is_pet_1_ok = false;
    f_is_pet_2_ok = false;
    _read();
}

void enum_deep_literals_t::_read() {
    m_pet_1 = static_cast<enum_deep_literals_t::container1_t::animal_t>(m__io->read_u4le());
    m_pet_2 = static_cast<enum_deep_literals_t::container1_t::container2_t::animal_t>(m__io->read_u4le());
}

enum_deep_literals_t::~enum_deep_literals_t() {
    _clean_up();
}

void enum_deep_literals_t::_clean_up() {
}

enum_deep_literals_t::container1_t::container1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_deep_literals_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void enum_deep_literals_t::container1_t::_read() {
}

enum_deep_literals_t::container1_t::~container1_t() {
    _clean_up();
}

void enum_deep_literals_t::container1_t::_clean_up() {
}

enum_deep_literals_t::container1_t::container2_t::container2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_deep_literals_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void enum_deep_literals_t::container1_t::container2_t::_read() {
}

enum_deep_literals_t::container1_t::container2_t::~container2_t() {
    _clean_up();
}

void enum_deep_literals_t::container1_t::container2_t::_clean_up() {
}

bool enum_deep_literals_t::is_pet_1_ok() {
    if (f_is_pet_1_ok)
        return m_is_pet_1_ok;
    m_is_pet_1_ok = pet_1() == enum_deep_literals_t::container1_t::ANIMAL_CAT;
    f_is_pet_1_ok = true;
    return m_is_pet_1_ok;
}

bool enum_deep_literals_t::is_pet_2_ok() {
    if (f_is_pet_2_ok)
        return m_is_pet_2_ok;
    m_is_pet_2_ok = pet_2() == enum_deep_literals_t::container1_t::container2_t::ANIMAL_HARE;
    f_is_pet_2_ok = true;
    return m_is_pet_2_ok;
}
