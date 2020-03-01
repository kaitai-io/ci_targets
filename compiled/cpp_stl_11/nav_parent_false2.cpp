// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "nav_parent_false2.h"

navParentFalse2_t::navParentFalse2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, navParentFalse2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_parentless = nullptr;
    _read();
}

void navParentFalse2_t::_read() {
    m_parentless = std::unique_ptr<child_t>(new child_t(m__io, nullptr, m__root));
}

navParentFalse2_t::~navParentFalse2_t() {
}

navParentFalse2_t::child_t::child_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, navParentFalse2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void navParentFalse2_t::child_t::_read() {
    m_foo = m__io->read_u1();
}

navParentFalse2_t::child_t::~child_t() {
}
