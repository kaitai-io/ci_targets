// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "cast_to_imported2.h"

cast_to_imported2_t::cast_to_imported2_t(kaitai::kstruct* p_hw_param, kaitai::kstream* p__io, kaitai::kstruct* p__parent, cast_to_imported2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_hw_param = p_hw_param;
    f_hw = false;
    _read();
}

void cast_to_imported2_t::_read() {
}

cast_to_imported2_t::~cast_to_imported2_t() {
    _clean_up();
}

void cast_to_imported2_t::_clean_up() {
}

hello_world_t* cast_to_imported2_t::hw() {
    if (f_hw)
        return m_hw;
    m_hw = static_cast<hello_world_t*>(hw_param());
    f_hw = true;
    return m_hw;
}
