// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "enum_to_i_class_border_1.h"
std::set<enum_to_i_class_border_1_t::animal_t> enum_to_i_class_border_1_t::_build_values_animal_t() {
    std::set<enum_to_i_class_border_1_t::animal_t> _t;
    _t.insert(enum_to_i_class_border_1_t::ANIMAL_DOG);
    _t.insert(enum_to_i_class_border_1_t::ANIMAL_CAT);
    _t.insert(enum_to_i_class_border_1_t::ANIMAL_CHICKEN);
    return _t;
}
const std::set<enum_to_i_class_border_1_t::animal_t> enum_to_i_class_border_1_t::_values_animal_t = enum_to_i_class_border_1_t::_build_values_animal_t();
bool enum_to_i_class_border_1_t::_is_defined_animal_t(enum_to_i_class_border_1_t::animal_t v) {
    return enum_to_i_class_border_1_t::_values_animal_t.find(v) != enum_to_i_class_border_1_t::_values_animal_t.end();
}

enum_to_i_class_border_1_t::enum_to_i_class_border_1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_to_i_class_border_1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_checker = 0;
    f_checker = false;
    f_some_dog = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void enum_to_i_class_border_1_t::_read() {
    m_pet_1 = static_cast<enum_to_i_class_border_1_t::animal_t>(m__io->read_u4le());
    m_pet_2 = static_cast<enum_to_i_class_border_1_t::animal_t>(m__io->read_u4le());
}

enum_to_i_class_border_1_t::~enum_to_i_class_border_1_t() {
    _clean_up();
}

void enum_to_i_class_border_1_t::_clean_up() {
    if (f_checker) {
        if (m_checker) {
            delete m_checker; m_checker = 0;
        }
    }
}

enum_to_i_class_border_2_t* enum_to_i_class_border_1_t::checker() {
    if (f_checker)
        return m_checker;
    f_checker = true;
    std::streampos _pos = m__io->pos();
    m__io->seek(0);
    m_checker = new enum_to_i_class_border_2_t(_root(), m__io);
    m__io->seek(_pos);
    return m_checker;
}

enum_to_i_class_border_1_t::animal_t enum_to_i_class_border_1_t::some_dog() {
    if (f_some_dog)
        return m_some_dog;
    f_some_dog = true;
    m_some_dog = static_cast<enum_to_i_class_border_1_t::animal_t>(4);
    return m_some_dog;
}
