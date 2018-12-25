// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "nested_same_name.h"

#include <memory>

nested_same_name_t::nested_same_name_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nested_same_name_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_main_data = nullptr;
    m_dummy = nullptr;
    _read();
}

void nested_same_name_t::_read() {
    m_main_data = std::unique_ptr(new main_t(m__io, this, m__root));
    m_dummy = std::unique_ptr(new dummy_obj_t(m__io, this, m__root));
}

nested_same_name_t::~nested_same_name_t() {
}

nested_same_name_t::main_t::main_t(kaitai::kstream* p__io, nested_same_name_t* p__parent, nested_same_name_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_foo = nullptr;
    _read();
}

void nested_same_name_t::main_t::_read() {
    m_main_size = m__io->read_s4le();
    m_foo = std::unique_ptr(new foo_obj_t(m__io, this, m__root));
}

nested_same_name_t::main_t::~main_t() {
}

nested_same_name_t::main_t::foo_obj_t::foo_obj_t(kaitai::kstream* p__io, nested_same_name_t::main_t* p__parent, nested_same_name_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nested_same_name_t::main_t::foo_obj_t::_read() {
    m_data = m__io->read_bytes((_parent()->main_size() * 2));
}

nested_same_name_t::main_t::foo_obj_t::~foo_obj_t() {
}

nested_same_name_t::dummy_obj_t::dummy_obj_t(kaitai::kstream* p__io, nested_same_name_t* p__parent, nested_same_name_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nested_same_name_t::dummy_obj_t::_read() {
}

nested_same_name_t::dummy_obj_t::~dummy_obj_t() {
}

nested_same_name_t::dummy_obj_t::foo_t::foo_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nested_same_name_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nested_same_name_t::dummy_obj_t::foo_t::_read() {
}

nested_same_name_t::dummy_obj_t::foo_t::~foo_t() {
}
