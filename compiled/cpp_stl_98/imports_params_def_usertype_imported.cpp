// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "imports_params_def_usertype_imported.h"

imports_params_def_usertype_imported_t::imports_params_def_usertype_imported_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, imports_params_def_usertype_imported_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_hw = 0;
    m_two = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void imports_params_def_usertype_imported_t::_read() {
    m_hw = new hello_world_t(m__io);
    m_two = new params_def_usertype_imported_t(hw(), m__io);
}

imports_params_def_usertype_imported_t::~imports_params_def_usertype_imported_t() {
    _clean_up();
}

void imports_params_def_usertype_imported_t::_clean_up() {
    if (m_hw) {
        delete m_hw; m_hw = 0;
    }
    if (m_two) {
        delete m_two; m_two = 0;
    }
}
