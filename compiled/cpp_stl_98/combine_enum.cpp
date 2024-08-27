// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "combine_enum.h"
std::set<combine_enum_t::animal_t> combine_enum_t::_build_values_animal_t() {
    std::set<combine_enum_t::animal_t> _t;
    _t.insert(combine_enum_t::ANIMAL_PIG);
    _t.insert(combine_enum_t::ANIMAL_HORSE);
    return _t;
}
const std::set<combine_enum_t::animal_t> combine_enum_t::_values_animal_t = combine_enum_t::_build_values_animal_t();
bool combine_enum_t::_is_defined_animal_t(combine_enum_t::animal_t v) {
    return combine_enum_t::_values_animal_t.find(v) != combine_enum_t::_values_animal_t.end();
}

combine_enum_t::combine_enum_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, combine_enum_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_enum_u4_u2 = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void combine_enum_t::_read() {
    m_enum_u4 = static_cast<combine_enum_t::animal_t>(m__io->read_u4le());
    m_enum_u2 = static_cast<combine_enum_t::animal_t>(m__io->read_u2le());
}

combine_enum_t::~combine_enum_t() {
    _clean_up();
}

void combine_enum_t::_clean_up() {
}

combine_enum_t::animal_t combine_enum_t::enum_u4_u2() {
    if (f_enum_u4_u2)
        return m_enum_u4_u2;
    f_enum_u4_u2 = true;
    m_enum_u4_u2 = ((false) ? (enum_u4()) : (enum_u2()));
    return m_enum_u4_u2;
}
