// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "bits_enum.h"
std::set<bits_enum_t::animal_t> bits_enum_t::_build_values_animal_t() {
    std::set<bits_enum_t::animal_t> _t;
    _t.insert(bits_enum_t::ANIMAL_CAT);
    _t.insert(bits_enum_t::ANIMAL_DOG);
    _t.insert(bits_enum_t::ANIMAL_HORSE);
    _t.insert(bits_enum_t::ANIMAL_PLATYPUS);
    return _t;
}
const std::set<bits_enum_t::animal_t> bits_enum_t::_values_animal_t = bits_enum_t::_build_values_animal_t();
bool bits_enum_t::_is_defined_animal_t(bits_enum_t::animal_t v) {
    return bits_enum_t::_values_animal_t.find(v) != bits_enum_t::_values_animal_t.end();
}

bits_enum_t::bits_enum_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, bits_enum_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void bits_enum_t::_read() {
    m_one = static_cast<bits_enum_t::animal_t>(m__io->read_bits_int_be(4));
    m_two = static_cast<bits_enum_t::animal_t>(m__io->read_bits_int_be(8));
    m_three = static_cast<bits_enum_t::animal_t>(m__io->read_bits_int_be(1));
}

bits_enum_t::~bits_enum_t() {
    _clean_up();
}

void bits_enum_t::_clean_up() {
}
