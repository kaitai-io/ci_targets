// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "imports_params_def_usertype_imported.h"

imports_params_def_usertype_imported_t::imports_params_def_usertype_imported_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, imports_params_def_usertype_imported_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_hw = nullptr;
    m_two = nullptr;
    _read();
}

void imports_params_def_usertype_imported_t::_read() {
    m_hw = std::unique_ptr<hello_world_t>(new hello_world_t(m__io));
    m_two = std::unique_ptr<params_def_usertype_imported_t>(new params_def_usertype_imported_t(hw(), m__io));
}

imports_params_def_usertype_imported_t::~imports_params_def_usertype_imported_t() {
    _clean_up();
}

void imports_params_def_usertype_imported_t::_clean_up() {
}
