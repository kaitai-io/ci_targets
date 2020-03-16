// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "nav_parent_override.h"

nav_parent_override_t::nav_parent_override_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nav_parent_override_t* /* p__root */) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_child_1 = nullptr;
    m_mediator_2 = nullptr;
    _read();
}

void nav_parent_override_t::_read() {
    m_child_size = m__io->read_u1();
    m_child_1 = std::unique_ptr<child_t>(new child_t(m__io, this, m__root));
    m_mediator_2 = std::unique_ptr<mediator_t>(new mediator_t(m__io, this, m__root));
}

nav_parent_override_t::~nav_parent_override_t() {
}

nav_parent_override_t::mediator_t::mediator_t(kaitai::kstream* p__io, nav_parent_override_t* p__parent, nav_parent_override_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_child_2 = nullptr;
    _read();
}

void nav_parent_override_t::mediator_t::_read() {
    m_child_2 = std::unique_ptr<child_t>(new child_t(m__io, _parent(), m__root));
}

nav_parent_override_t::mediator_t::~mediator_t() {
}

nav_parent_override_t::child_t::child_t(kaitai::kstream* p__io, nav_parent_override_t* p__parent, nav_parent_override_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nav_parent_override_t::child_t::_read() {
    m_data = m__io->read_bytes(kaitai::to_signed(_parent()->child_size()));
}

nav_parent_override_t::child_t::~child_t() {
}
