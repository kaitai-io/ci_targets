// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "imports_params_def_array_usertype_imported.h"

imports_params_def_array_usertype_imported_t::imports_params_def_array_usertype_imported_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, imports_params_def_array_usertype_imported_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_hws = nullptr;
    m_two = nullptr;
    _read();
}

void imports_params_def_array_usertype_imported_t::_read() {
    m_hws = std::unique_ptr<std::vector<std::unique_ptr<hello_world_t>>>(new std::vector<std::unique_ptr<hello_world_t>>());
    const int l_hws = 2;
    for (int i = 0; i < l_hws; i++) {
        m_hws->push_back(std::move(std::unique_ptr<hello_world_t>(new hello_world_t(m__io))));
    }
    m_two = std::unique_ptr<params_def_array_usertype_imported_t>(new params_def_array_usertype_imported_t(hws(), m__io));
}

imports_params_def_array_usertype_imported_t::~imports_params_def_array_usertype_imported_t() {
    _clean_up();
}

void imports_params_def_array_usertype_imported_t::_clean_up() {
}
