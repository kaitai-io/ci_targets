// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "enum_to_i_class_border_1.h"
const std::set<enum_to_i_class_border_1_t::animal_t> enum_to_i_class_border_1_t::_values_animal_t{
    enum_to_i_class_border_1_t::ANIMAL_DOG,
    enum_to_i_class_border_1_t::ANIMAL_CAT,
    enum_to_i_class_border_1_t::ANIMAL_CHICKEN,
};
bool enum_to_i_class_border_1_t::_is_defined_animal_t(enum_to_i_class_border_1_t::animal_t v) {
    return enum_to_i_class_border_1_t::_values_animal_t.find(v) != enum_to_i_class_border_1_t::_values_animal_t.end();
}

enum_to_i_class_border_1_t::enum_to_i_class_border_1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_to_i_class_border_1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_checker = nullptr;
    f_checker = false;
    f_some_dog = false;
    _read();
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
    }
}

enum_to_i_class_border_2_t* enum_to_i_class_border_1_t::checker() {
    if (f_checker)
        return m_checker.get();
    f_checker = true;
    std::streampos _pos = m__io->pos();
    m__io->seek(0);
    m_checker = std::unique_ptr<enum_to_i_class_border_2_t>(new enum_to_i_class_border_2_t(_root(), m__io));
    m__io->seek(_pos);
    return m_checker.get();
}

enum_to_i_class_border_1_t::animal_t enum_to_i_class_border_1_t::some_dog() {
    if (f_some_dog)
        return m_some_dog;
    f_some_dog = true;
    m_some_dog = static_cast<enum_to_i_class_border_1_t::animal_t>(4);
    return m_some_dog;
}
