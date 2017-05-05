// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "opaque_external_type_02_parent.h"


#include "opaque_external_type_02_child.h"

opaque_external_type_02_parent_t::opaque_external_type_02_parent_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, opaque_external_type_02_parent_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    m_parent = new parent_obj_t(m__io, this, m__root);
}

opaque_external_type_02_parent_t::~opaque_external_type_02_parent_t() {
    delete m_parent;
}

opaque_external_type_02_parent_t::parent_obj_t::parent_obj_t(kaitai::kstream *p_io, opaque_external_type_02_parent_t* p_parent, opaque_external_type_02_parent_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m_child = new opaque_external_type_02_child_t(m__io);
}

opaque_external_type_02_parent_t::parent_obj_t::~parent_obj_t() {
    delete m_child;
}
