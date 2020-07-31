// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "nested_types.h"

nested_types_t::nested_types_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nested_types_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_one = 0;
    m_two = 0;

    try {
        _read();
    } catch(...) {
        this->~nested_types_t();
        throw;
    }
}

void nested_types_t::_read() {
    m_one = new subtype_a_t(m__io, this, m__root);
    m_two = new subtype_b_t(m__io, this, m__root);
}

nested_types_t::~nested_types_t() {
    delete m_one;
    delete m_two;
}

nested_types_t::subtype_a_t::subtype_a_t(kaitai::kstream* p__io, nested_types_t* p__parent, nested_types_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_typed_at_root = 0;
    m_typed_here = 0;

    try {
        _read();
    } catch(...) {
        this->~subtype_a_t();
        throw;
    }
}

void nested_types_t::subtype_a_t::_read() {
    m_typed_at_root = new subtype_b_t(m__io, this, m__root);
    m_typed_here = new subtype_c_t(m__io, this, m__root);
}

nested_types_t::subtype_a_t::~subtype_a_t() {
    delete m_typed_at_root;
    delete m_typed_here;
}

nested_types_t::subtype_a_t::subtype_c_t::subtype_c_t(kaitai::kstream* p__io, nested_types_t::subtype_a_t* p__parent, nested_types_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        this->~subtype_c_t();
        throw;
    }
}

void nested_types_t::subtype_a_t::subtype_c_t::_read() {
    m_value_c = m__io->read_s1();
}

nested_types_t::subtype_a_t::subtype_c_t::~subtype_c_t() {
}

nested_types_t::subtype_b_t::subtype_b_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nested_types_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        this->~subtype_b_t();
        throw;
    }
}

void nested_types_t::subtype_b_t::_read() {
    m_value_b = m__io->read_s1();
}

nested_types_t::subtype_b_t::~subtype_b_t() {
}
