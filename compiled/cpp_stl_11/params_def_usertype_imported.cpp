// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "params_def_usertype_imported.h"
#include "hello_world.h"

params_def_usertype_imported_t::params_def_usertype_imported_t(hello_world_t* p_hw_param, kaitai::kstream* p__io, kaitai::kstruct* p__parent, params_def_usertype_imported_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_hw_param = p_hw_param;
    f_hw_one = false;
    _read();
}

void params_def_usertype_imported_t::_read() {
}

params_def_usertype_imported_t::~params_def_usertype_imported_t() {
    _clean_up();
}

void params_def_usertype_imported_t::_clean_up() {
}

uint8_t params_def_usertype_imported_t::hw_one() {
    if (f_hw_one)
        return m_hw_one;
    m_hw_one = hw_param()->one();
    f_hw_one = true;
    return m_hw_one;
}
