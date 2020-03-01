// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "enum_to_i_class_border_1.h"
#include "enum_to_i_class_border_2.h"

enumToIClassBorder1_t::enumToIClassBorder1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enumToIClassBorder1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_checker = nullptr;
    f_some_dog = false;
    f_checker = false;
    _read();
}

void enumToIClassBorder1_t::_read() {
    m_pet_1 = static_cast<enumToIClassBorder1_t::animal_t>(m__io->read_u4le());
    m_pet_2 = static_cast<enumToIClassBorder1_t::animal_t>(m__io->read_u4le());
}

enumToIClassBorder1_t::~enumToIClassBorder1_t() {
    if (f_checker) {
    }
}

enumToIClassBorder1_t::animal_t enumToIClassBorder1_t::some_dog() {
    if (f_some_dog)
        return m_some_dog;
    m_some_dog = static_cast<enumToIClassBorder1_t::animal_t>(4);
    f_some_dog = true;
    return m_some_dog;
}

enumToIClassBorder2_t* enumToIClassBorder1_t::checker() {
    if (f_checker)
        return m_checker.get();
    std::streampos _pos = m__io->pos();
    m__io->seek(0);
    m_checker = std::unique_ptr<enumToIClassBorder2_t>(new enumToIClassBorder2_t(_root(), m__io));
    m__io->seek(_pos);
    f_checker = true;
    return m_checker.get();
}
