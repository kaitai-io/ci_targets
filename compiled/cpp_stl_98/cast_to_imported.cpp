// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "cast_to_imported.h"

cast_to_imported_t::cast_to_imported_t(kaitai::kstruct* p_hw_param, kaitai::kstream* p__io, kaitai::kstruct* p__parent, cast_to_imported_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_hw_param = p_hw_param;
    f_hw_one = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void cast_to_imported_t::_read() {
}

cast_to_imported_t::~cast_to_imported_t() {
    _clean_up();
}

void cast_to_imported_t::_clean_up() {
}

uint8_t cast_to_imported_t::hw_one() {
    if (f_hw_one)
        return m_hw_one;
    f_hw_one = true;
    m_hw_one = static_cast<hello_world_t*>(hw_param())->one();
    return m_hw_one;
}
