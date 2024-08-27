// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "params_def_array_usertype_imported.h"

params_def_array_usertype_imported_t::params_def_array_usertype_imported_t(std::vector<hello_world_t*>* p_hws_param, kaitai::kstream* p__io, kaitai::kstruct* p__parent, params_def_array_usertype_imported_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_hws_param = p_hws_param;
    f_hw0_one = false;
    f_hw1_one = false;
    _read();
}

void params_def_array_usertype_imported_t::_read() {
}

params_def_array_usertype_imported_t::~params_def_array_usertype_imported_t() {
    _clean_up();
}

void params_def_array_usertype_imported_t::_clean_up() {
}

uint8_t params_def_array_usertype_imported_t::hw0_one() {
    if (f_hw0_one)
        return m_hw0_one;
    f_hw0_one = true;
    m_hw0_one = hws_param()->at(0)->one();
    return m_hw0_one;
}

uint8_t params_def_array_usertype_imported_t::hw1_one() {
    if (f_hw1_one)
        return m_hw1_one;
    f_hw1_one = true;
    m_hw1_one = hws_param()->at(1)->one();
    return m_hw1_one;
}
