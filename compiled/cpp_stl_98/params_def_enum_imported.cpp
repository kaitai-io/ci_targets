// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "params_def_enum_imported.h"

params_def_enum_imported_t::params_def_enum_imported_t(enum_0_t::animal_t p_pet_1_param, enum_deep_t::container1_t::container2_t::animal_t p_pet_2_param, kaitai::kstream* p__io, kaitai::kstruct* p__parent, params_def_enum_imported_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_pet_1_param = p_pet_1_param;
    m_pet_2_param = p_pet_2_param;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void params_def_enum_imported_t::_read() {
}

params_def_enum_imported_t::~params_def_enum_imported_t() {
    _clean_up();
}

void params_def_enum_imported_t::_clean_up() {
}
