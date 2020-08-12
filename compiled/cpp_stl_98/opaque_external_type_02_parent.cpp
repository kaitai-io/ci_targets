// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "opaque_external_type_02_parent.h"

opaque_external_type_02_parent_t::opaque_external_type_02_parent_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, opaque_external_type_02_parent_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_parent = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void opaque_external_type_02_parent_t::_read() {
    m_parent = new parent_obj_t(m__io, this, m__root);
}

opaque_external_type_02_parent_t::~opaque_external_type_02_parent_t() {
    _clean_up();
}

void opaque_external_type_02_parent_t::_clean_up() {
    if (m_parent) {
        delete m_parent; m_parent = 0;
    }
}

opaque_external_type_02_parent_t::parent_obj_t::parent_obj_t(kaitai::kstream* p__io, opaque_external_type_02_parent_t* p__parent, opaque_external_type_02_parent_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_child = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void opaque_external_type_02_parent_t::parent_obj_t::_read() {
    m_child = new opaque_external_type_02_child_t(m__io);
}

opaque_external_type_02_parent_t::parent_obj_t::~parent_obj_t() {
    _clean_up();
}

void opaque_external_type_02_parent_t::parent_obj_t::_clean_up() {
    if (m_child) {
        delete m_child; m_child = 0;
    }
}
