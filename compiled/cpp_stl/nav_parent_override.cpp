// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "nav_parent_override.h"



nav_parent_override_t::nav_parent_override_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, nav_parent_override_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    m_child_size = m__io->read_u1();
    m_child_1 = new child_t(m__io, this, m__root);
    m_mediator_2 = new mediator_t(m__io, this, m__root);
}

nav_parent_override_t::~nav_parent_override_t() {
    delete m_child_1;
    delete m_mediator_2;
}

nav_parent_override_t::mediator_t::mediator_t(kaitai::kstream *p_io, nav_parent_override_t* p_parent, nav_parent_override_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m_child_2 = new child_t(m__io, _parent(), m__root);
}

nav_parent_override_t::mediator_t::~mediator_t() {
    delete m_child_2;
}

nav_parent_override_t::child_t::child_t(kaitai::kstream *p_io, nav_parent_override_t* p_parent, nav_parent_override_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m_data = m__io->read_bytes(_parent()->child_size());
}

nav_parent_override_t::child_t::~child_t() {
}
