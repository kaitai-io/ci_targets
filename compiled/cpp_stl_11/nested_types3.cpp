// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "nested_types3.h"

#include <memory>

nested_types3_t::nested_types3_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nested_types3_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_a_cc = nullptr;
    m_a_c_d = nullptr;
    m_b = nullptr;
    _read();
}

void nested_types3_t::_read() {
    m_a_cc = std::unique_ptr(new subtype_a_t::subtype_cc_t(m__io, this, m__root));
    m_a_c_d = std::unique_ptr(new subtype_a_t::subtype_c_t::subtype_d_t(m__io, this, m__root));
    m_b = std::unique_ptr(new subtype_b_t(m__io, this, m__root));
}

nested_types3_t::~nested_types3_t() {
}

nested_types3_t::subtype_a_t::subtype_a_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nested_types3_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nested_types3_t::subtype_a_t::_read() {
}

nested_types3_t::subtype_a_t::~subtype_a_t() {
}

nested_types3_t::subtype_a_t::subtype_c_t::subtype_c_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nested_types3_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nested_types3_t::subtype_a_t::subtype_c_t::_read() {
}

nested_types3_t::subtype_a_t::subtype_c_t::~subtype_c_t() {
}

nested_types3_t::subtype_a_t::subtype_c_t::subtype_d_t::subtype_d_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nested_types3_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nested_types3_t::subtype_a_t::subtype_c_t::subtype_d_t::_read() {
    m_value_d = m__io->read_s1();
}

nested_types3_t::subtype_a_t::subtype_c_t::subtype_d_t::~subtype_d_t() {
}

nested_types3_t::subtype_a_t::subtype_cc_t::subtype_cc_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nested_types3_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nested_types3_t::subtype_a_t::subtype_cc_t::_read() {
    m_value_cc = m__io->read_s1();
}

nested_types3_t::subtype_a_t::subtype_cc_t::~subtype_cc_t() {
}

nested_types3_t::subtype_b_t::subtype_b_t(kaitai::kstream* p__io, nested_types3_t* p__parent, nested_types3_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_a_cc = nullptr;
    m_a_c_d = nullptr;
    _read();
}

void nested_types3_t::subtype_b_t::_read() {
    m_value_b = m__io->read_s1();
    m_a_cc = std::unique_ptr(new subtype_a_t::subtype_cc_t(m__io, this, m__root));
    m_a_c_d = std::unique_ptr(new subtype_a_t::subtype_c_t::subtype_d_t(m__io, this, m__root));
}

nested_types3_t::subtype_b_t::~subtype_b_t() {
}
