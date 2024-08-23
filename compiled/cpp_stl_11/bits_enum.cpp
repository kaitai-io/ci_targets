// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "bits_enum.h"
const std::set<std::underlying_type<bits_enum_t::animal_t>::type> bits_enum_t::_values_animal_t{0, 1, 4, 5};

bits_enum_t::bits_enum_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, bits_enum_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    _read();
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
