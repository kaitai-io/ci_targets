// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "enum_deep.h"

enum_deep_t::enum_deep_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_deep_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void enum_deep_t::_read() {
    m_pet_1 = static_cast<enum_deep_t::container1_t::animal_t>(m__io->read_u4le());
    m_pet_2 = static_cast<enum_deep_t::container1_t::container2_t::animal_t>(m__io->read_u4le());
}

enum_deep_t::~enum_deep_t() {
    _clean_up();
}

void enum_deep_t::_clean_up() {
}
std::set<enum_deep_t::container1_t::animal_t> enum_deep_t::container1_t::_build_values_animal_t() {
    std::set<enum_deep_t::container1_t::animal_t> _t;
    _t.insert(enum_deep_t::container1_t::ANIMAL_DOG);
    _t.insert(enum_deep_t::container1_t::ANIMAL_CAT);
    _t.insert(enum_deep_t::container1_t::ANIMAL_CHICKEN);
    return _t;
}
const std::set<enum_deep_t::container1_t::animal_t> enum_deep_t::container1_t::_values_animal_t = enum_deep_t::container1_t::_build_values_animal_t();
bool enum_deep_t::container1_t::_is_defined_animal_t(enum_deep_t::container1_t::animal_t v) {
    return enum_deep_t::container1_t::_values_animal_t.find(v) != enum_deep_t::container1_t::_values_animal_t.end();
}

enum_deep_t::container1_t::container1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_deep_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void enum_deep_t::container1_t::_read() {
}

enum_deep_t::container1_t::~container1_t() {
    _clean_up();
}

void enum_deep_t::container1_t::_clean_up() {
}
std::set<enum_deep_t::container1_t::container2_t::animal_t> enum_deep_t::container1_t::container2_t::_build_values_animal_t() {
    std::set<enum_deep_t::container1_t::container2_t::animal_t> _t;
    _t.insert(enum_deep_t::container1_t::container2_t::ANIMAL_CANARY);
    _t.insert(enum_deep_t::container1_t::container2_t::ANIMAL_TURTLE);
    _t.insert(enum_deep_t::container1_t::container2_t::ANIMAL_HARE);
    return _t;
}
const std::set<enum_deep_t::container1_t::container2_t::animal_t> enum_deep_t::container1_t::container2_t::_values_animal_t = enum_deep_t::container1_t::container2_t::_build_values_animal_t();
bool enum_deep_t::container1_t::container2_t::_is_defined_animal_t(enum_deep_t::container1_t::container2_t::animal_t v) {
    return enum_deep_t::container1_t::container2_t::_values_animal_t.find(v) != enum_deep_t::container1_t::container2_t::_values_animal_t.end();
}

enum_deep_t::container1_t::container2_t::container2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_deep_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void enum_deep_t::container1_t::container2_t::_read() {
}

enum_deep_t::container1_t::container2_t::~container2_t() {
    _clean_up();
}

void enum_deep_t::container1_t::container2_t::_clean_up() {
}
