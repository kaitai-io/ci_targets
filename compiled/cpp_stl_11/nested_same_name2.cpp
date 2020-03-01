// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "nested_same_name2.h"

nestedSameName2_t::nestedSameName2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nestedSameName2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_main_data = nullptr;
    m_dummy = nullptr;
    _read();
}

void nestedSameName2_t::_read() {
    m_version = m__io->read_u4le();
    m_main_data = std::unique_ptr<main_t>(new main_t(m__io, this, m__root));
    m_dummy = std::unique_ptr<dummyObj_t>(new dummyObj_t(m__io, this, m__root));
}

nestedSameName2_t::~nestedSameName2_t() {
}

nestedSameName2_t::main_t::main_t(kaitai::kstream* p__io, nestedSameName2_t* p__parent, nestedSameName2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_foo = nullptr;
    _read();
}

void nestedSameName2_t::main_t::_read() {
    m_main_size = m__io->read_s4le();
    m_foo = std::unique_ptr<fooObj_t>(new fooObj_t(m__io, this, m__root));
}

nestedSameName2_t::main_t::~main_t() {
}

nestedSameName2_t::main_t::fooObj_t::fooObj_t(kaitai::kstream* p__io, nestedSameName2_t::main_t* p__parent, nestedSameName2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nestedSameName2_t::main_t::fooObj_t::_read() {
    m_data1 = m__io->read_bytes((_parent()->main_size() * 2));
}

nestedSameName2_t::main_t::fooObj_t::~fooObj_t() {
}

nestedSameName2_t::dummyObj_t::dummyObj_t(kaitai::kstream* p__io, nestedSameName2_t* p__parent, nestedSameName2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_foo = nullptr;
    _read();
}

void nestedSameName2_t::dummyObj_t::_read() {
    m_dummy_size = m__io->read_s4le();
    m_foo = std::unique_ptr<fooObj_t>(new fooObj_t(m__io, this, m__root));
}

nestedSameName2_t::dummyObj_t::~dummyObj_t() {
}

nestedSameName2_t::dummyObj_t::fooObj_t::fooObj_t(kaitai::kstream* p__io, nestedSameName2_t::dummyObj_t* p__parent, nestedSameName2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nestedSameName2_t::dummyObj_t::fooObj_t::_read() {
    m_data2 = m__io->read_bytes((_parent()->dummy_size() * 2));
}

nestedSameName2_t::dummyObj_t::fooObj_t::~fooObj_t() {
}
