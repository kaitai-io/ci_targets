// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "nested_same_name.h"

nestedSameName_t::nestedSameName_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nestedSameName_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_main_data = 0;
    m_dummy = 0;
    _read();
}

void nestedSameName_t::_read() {
    m_main_data = new main_t(m__io, this, m__root);
    m_dummy = new dummyObj_t(m__io, this, m__root);
}

nestedSameName_t::~nestedSameName_t() {
    delete m_main_data;
    delete m_dummy;
}

nestedSameName_t::main_t::main_t(kaitai::kstream* p__io, nestedSameName_t* p__parent, nestedSameName_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_foo = 0;
    _read();
}

void nestedSameName_t::main_t::_read() {
    m_main_size = m__io->read_s4le();
    m_foo = new fooObj_t(m__io, this, m__root);
}

nestedSameName_t::main_t::~main_t() {
    delete m_foo;
}

nestedSameName_t::main_t::fooObj_t::fooObj_t(kaitai::kstream* p__io, nestedSameName_t::main_t* p__parent, nestedSameName_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nestedSameName_t::main_t::fooObj_t::_read() {
    m_data = m__io->read_bytes((_parent()->main_size() * 2));
}

nestedSameName_t::main_t::fooObj_t::~fooObj_t() {
}

nestedSameName_t::dummyObj_t::dummyObj_t(kaitai::kstream* p__io, nestedSameName_t* p__parent, nestedSameName_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nestedSameName_t::dummyObj_t::_read() {
}

nestedSameName_t::dummyObj_t::~dummyObj_t() {
}

nestedSameName_t::dummyObj_t::foo_t::foo_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nestedSameName_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nestedSameName_t::dummyObj_t::foo_t::_read() {
}

nestedSameName_t::dummyObj_t::foo_t::~foo_t() {
}
