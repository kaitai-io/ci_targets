// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "opaque_external_type_02_parent.h"


#include "opaque_external_type_02_child.h"

opaque_external_type_02_parent_t::opaque_external_type_02_parent_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, opaque_external_type_02_parent_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_parent = 0;
    _read();
}

void opaque_external_type_02_parent_t::_read() {
    m_parent = new parent_obj_t(m__io, this, m__root);
}

opaque_external_type_02_parent_t::~opaque_external_type_02_parent_t() {
    delete m_parent;
}

opaque_external_type_02_parent_t::parent_obj_t::parent_obj_t(kaitai::kstream* p__io, opaque_external_type_02_parent_t* p__parent, opaque_external_type_02_parent_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_child = 0;
    _read();
}

void opaque_external_type_02_parent_t::parent_obj_t::_read() {
    m_child = new opaque_external_type_02_child_t(m__io);
}

opaque_external_type_02_parent_t::parent_obj_t::~parent_obj_t() {
    delete m_child;
}
