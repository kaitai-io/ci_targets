// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "nav_parent_false.h"

navParentFalse_t::navParentFalse_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, navParentFalse_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_element_a = nullptr;
    m_element_b = nullptr;
    _read();
}

void navParentFalse_t::_read() {
    m_child_size = m__io->read_u1();
    m_element_a = std::unique_ptr<parentA_t>(new parentA_t(m__io, this, m__root));
    m_element_b = std::unique_ptr<parentB_t>(new parentB_t(m__io, this, m__root));
}

navParentFalse_t::~navParentFalse_t() {
}

navParentFalse_t::parentA_t::parentA_t(kaitai::kstream* p__io, navParentFalse_t* p__parent, navParentFalse_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_foo = nullptr;
    m_bar = nullptr;
    _read();
}

void navParentFalse_t::parentA_t::_read() {
    m_foo = std::unique_ptr<child_t>(new child_t(m__io, this, m__root));
    m_bar = std::unique_ptr<parentB_t>(new parentB_t(m__io, this, m__root));
}

navParentFalse_t::parentA_t::~parentA_t() {
}

navParentFalse_t::parentB_t::parentB_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, navParentFalse_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_foo = nullptr;
    _read();
}

void navParentFalse_t::parentB_t::_read() {
    m_foo = std::unique_ptr<child_t>(new child_t(m__io, nullptr, m__root));
}

navParentFalse_t::parentB_t::~parentB_t() {
}

navParentFalse_t::child_t::child_t(kaitai::kstream* p__io, navParentFalse_t::parentA_t* p__parent, navParentFalse_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void navParentFalse_t::child_t::_read() {
    m_code = m__io->read_u1();
    n_more = true;
    if (code() == 73) {
        n_more = false;
        m_more = m__io->read_bytes(_parent()->_parent()->child_size());
    }
}

navParentFalse_t::child_t::~child_t() {
    if (!n_more) {
    }
}
