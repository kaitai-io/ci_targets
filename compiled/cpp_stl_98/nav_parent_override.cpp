// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "nav_parent_override.h"

navParentOverride_t::navParentOverride_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, navParentOverride_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_child_1 = 0;
    m_mediator_2 = 0;
    _read();
}

void navParentOverride_t::_read() {
    m_child_size = m__io->read_u1();
    m_child_1 = new child_t(m__io, this, m__root);
    m_mediator_2 = new mediator_t(m__io, this, m__root);
}

navParentOverride_t::~navParentOverride_t() {
    delete m_child_1;
    delete m_mediator_2;
}

navParentOverride_t::mediator_t::mediator_t(kaitai::kstream* p__io, navParentOverride_t* p__parent, navParentOverride_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_child_2 = 0;
    _read();
}

void navParentOverride_t::mediator_t::_read() {
    m_child_2 = new child_t(m__io, _parent(), m__root);
}

navParentOverride_t::mediator_t::~mediator_t() {
    delete m_child_2;
}

navParentOverride_t::child_t::child_t(kaitai::kstream* p__io, navParentOverride_t* p__parent, navParentOverride_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void navParentOverride_t::child_t::_read() {
    m_data = m__io->read_bytes(_parent()->child_size());
}

navParentOverride_t::child_t::~child_t() {
}
