// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "opaque_external_type_02_parent.h"

opaque_external_type_02_parent_t::opaque_external_type_02_parent_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, opaque_external_type_02_parent_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_parent = nullptr;
    _read();
}

void opaque_external_type_02_parent_t::_read() {
    m_parent = std::unique_ptr<parent_obj_t>(new parent_obj_t(m__io, this, m__root));
}

opaque_external_type_02_parent_t::~opaque_external_type_02_parent_t() {
    _clean_up();
}

void opaque_external_type_02_parent_t::_clean_up() {
}

opaque_external_type_02_parent_t::parent_obj_t::parent_obj_t(kaitai::kstream* p__io, opaque_external_type_02_parent_t* p__parent, opaque_external_type_02_parent_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_child = nullptr;
    _read();
}

void opaque_external_type_02_parent_t::parent_obj_t::_read() {
    m_child = std::unique_ptr<opaque_external_type_02_child_t>(new opaque_external_type_02_child_t(m__io));
}

opaque_external_type_02_parent_t::parent_obj_t::~parent_obj_t() {
    _clean_up();
}

void opaque_external_type_02_parent_t::parent_obj_t::_clean_up() {
}
