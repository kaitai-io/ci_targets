// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "nested_same_name2.h"

nested_same_name2_t::nested_same_name2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nested_same_name2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_main_data = nullptr;
    m_dummy = nullptr;
    _read();
}

void nested_same_name2_t::_read() {
    m_version = m__io->read_u4le();
    m_main_data = std::unique_ptr<main_t>(new main_t(m__io, this, m__root));
    m_dummy = std::unique_ptr<dummy_obj_t>(new dummy_obj_t(m__io, this, m__root));
}

nested_same_name2_t::~nested_same_name2_t() {
}

nested_same_name2_t::main_t::main_t(kaitai::kstream* p__io, nested_same_name2_t* p__parent, nested_same_name2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_foo = nullptr;
    _read();
}

void nested_same_name2_t::main_t::_read() {
    m_main_size = m__io->read_s4le();
    m_foo = std::unique_ptr<foo_obj_t>(new foo_obj_t(m__io, this, m__root));
}

nested_same_name2_t::main_t::~main_t() {
}

nested_same_name2_t::main_t::foo_obj_t::foo_obj_t(kaitai::kstream* p__io, nested_same_name2_t::main_t* p__parent, nested_same_name2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nested_same_name2_t::main_t::foo_obj_t::_read() {
    m_data1 = m__io->read_bytes((_parent()->main_size() * 2));
}

nested_same_name2_t::main_t::foo_obj_t::~foo_obj_t() {
}

nested_same_name2_t::dummy_obj_t::dummy_obj_t(kaitai::kstream* p__io, nested_same_name2_t* p__parent, nested_same_name2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_foo = nullptr;
    _read();
}

void nested_same_name2_t::dummy_obj_t::_read() {
    m_dummy_size = m__io->read_s4le();
    m_foo = std::unique_ptr<foo_obj_t>(new foo_obj_t(m__io, this, m__root));
}

nested_same_name2_t::dummy_obj_t::~dummy_obj_t() {
}

nested_same_name2_t::dummy_obj_t::foo_obj_t::foo_obj_t(kaitai::kstream* p__io, nested_same_name2_t::dummy_obj_t* p__parent, nested_same_name2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nested_same_name2_t::dummy_obj_t::foo_obj_t::_read() {
    m_data2 = m__io->read_bytes((_parent()->dummy_size() * 2));
}

nested_same_name2_t::dummy_obj_t::foo_obj_t::~foo_obj_t() {
}
