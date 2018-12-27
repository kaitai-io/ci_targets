// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "nested_types.h"

#include <memory>

nested_types_t::nested_types_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nested_types_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_one = nullptr;
    m_two = nullptr;
    _read();
}

void nested_types_t::_read() {
    m_one = std::unique_ptr<subtype_a_t>(new subtype_a_t(m__io, this, m__root));
    m_two = std::unique_ptr<subtype_b_t>(new subtype_b_t(m__io, this, m__root));
}

nested_types_t::~nested_types_t() {
}

nested_types_t::subtype_a_t::subtype_a_t(kaitai::kstream* p__io, nested_types_t* p__parent, nested_types_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_typed_at_root = nullptr;
    m_typed_here = nullptr;
    _read();
}

void nested_types_t::subtype_a_t::_read() {
    m_typed_at_root = std::unique_ptr<subtype_b_t>(new subtype_b_t(m__io, this, m__root));
    m_typed_here = std::unique_ptr<subtype_c_t>(new subtype_c_t(m__io, this, m__root));
}

nested_types_t::subtype_a_t::~subtype_a_t() {
}

nested_types_t::subtype_a_t::subtype_c_t::subtype_c_t(kaitai::kstream* p__io, nested_types_t::subtype_a_t* p__parent, nested_types_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nested_types_t::subtype_a_t::subtype_c_t::_read() {
    m_value_c = m__io->read_s1();
}

nested_types_t::subtype_a_t::subtype_c_t::~subtype_c_t() {
}

nested_types_t::subtype_b_t::subtype_b_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nested_types_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nested_types_t::subtype_b_t::_read() {
    m_value_b = m__io->read_s1();
}

nested_types_t::subtype_b_t::~subtype_b_t() {
}
