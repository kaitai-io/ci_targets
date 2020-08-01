// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "enum_to_i_class_border_2.h"
#include "enum_to_i_class_border_1.h"

enum_to_i_class_border_2_t::enum_to_i_class_border_2_t(enum_to_i_class_border_1_t* p_parent, kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_to_i_class_border_2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_parent = p_parent;
    f_is_dog = false;

    try {
        _read();
    } catch(...) {
        // this->~enum_to_i_class_border_2_t();
        throw;
    }
}

void enum_to_i_class_border_2_t::_read() {
}

enum_to_i_class_border_2_t::~enum_to_i_class_border_2_t() {
}

bool enum_to_i_class_border_2_t::is_dog() {
    if (f_is_dog)
        return m_is_dog;
    m_is_dog = parent()->some_dog() == 4;
    f_is_dog = true;
    return m_is_dog;
}
