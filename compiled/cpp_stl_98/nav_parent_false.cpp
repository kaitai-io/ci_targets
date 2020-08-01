// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "nav_parent_false.h"

nav_parent_false_t::nav_parent_false_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nav_parent_false_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_element_a = 0;
    m_element_b = 0;

    try {
        _read();
    } catch(...) {
        this->~nav_parent_false_t();
        throw;
    }
}

void nav_parent_false_t::_read() {
    m_child_size = m__io->read_u1();
    m_element_a = new parent_a_t(m__io, this, m__root);
    m_element_b = new parent_b_t(m__io, this, m__root);
}

nav_parent_false_t::~nav_parent_false_t() {
    if (m_element_a) {
        delete m_element_a; m_element_a = 0;
    }
    if (m_element_b) {
        delete m_element_b; m_element_b = 0;
    }
}

nav_parent_false_t::parent_a_t::parent_a_t(kaitai::kstream* p__io, nav_parent_false_t* p__parent, nav_parent_false_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_foo = 0;
    m_bar = 0;

    try {
        _read();
    } catch(...) {
        this->~parent_a_t();
        throw;
    }
}

void nav_parent_false_t::parent_a_t::_read() {
    m_foo = new child_t(m__io, this, m__root);
    m_bar = new parent_b_t(m__io, this, m__root);
}

nav_parent_false_t::parent_a_t::~parent_a_t() {
    if (m_foo) {
        delete m_foo; m_foo = 0;
    }
    if (m_bar) {
        delete m_bar; m_bar = 0;
    }
}

nav_parent_false_t::parent_b_t::parent_b_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nav_parent_false_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_foo = 0;

    try {
        _read();
    } catch(...) {
        this->~parent_b_t();
        throw;
    }
}

void nav_parent_false_t::parent_b_t::_read() {
    m_foo = new child_t(m__io, 0, m__root);
}

nav_parent_false_t::parent_b_t::~parent_b_t() {
    if (m_foo) {
        delete m_foo; m_foo = 0;
    }
}

nav_parent_false_t::child_t::child_t(kaitai::kstream* p__io, nav_parent_false_t::parent_a_t* p__parent, nav_parent_false_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        this->~child_t();
        throw;
    }
}

void nav_parent_false_t::child_t::_read() {
    m_code = m__io->read_u1();
    n_more = true;
    if (code() == 73) {
        n_more = false;
        m_more = m__io->read_bytes(_parent()->_parent()->child_size());
    }
}

nav_parent_false_t::child_t::~child_t() {
    if (!n_more) {
    }
}
