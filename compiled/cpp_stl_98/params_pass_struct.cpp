// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "params_pass_struct.h"

paramsPassStruct_t::paramsPassStruct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, paramsPassStruct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_first = 0;
    m_one = 0;
    _read();
}

void paramsPassStruct_t::_read() {
    m_first = new block_t(m__io, this, m__root);
    m_one = new structType_t(first(), m__io, this, m__root);
}

paramsPassStruct_t::~paramsPassStruct_t() {
    delete m_first;
    delete m_one;
}

paramsPassStruct_t::block_t::block_t(kaitai::kstream* p__io, paramsPassStruct_t* p__parent, paramsPassStruct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void paramsPassStruct_t::block_t::_read() {
    m_foo = m__io->read_u1();
}

paramsPassStruct_t::block_t::~block_t() {
}

paramsPassStruct_t::structType_t::structType_t(kaitai::kstruct* p_foo, kaitai::kstream* p__io, paramsPassStruct_t* p__parent, paramsPassStruct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_foo = p_foo;
    m_bar = 0;
    _read();
}

void paramsPassStruct_t::structType_t::_read() {
    m_bar = new baz_t(foo(), m__io, this, m__root);
}

paramsPassStruct_t::structType_t::~structType_t() {
    delete m_bar;
}

paramsPassStruct_t::structType_t::baz_t::baz_t(kaitai::kstruct* p_foo, kaitai::kstream* p__io, paramsPassStruct_t::structType_t* p__parent, paramsPassStruct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_foo = p_foo;
    _read();
}

void paramsPassStruct_t::structType_t::baz_t::_read() {
    m_qux = m__io->read_u1();
}

paramsPassStruct_t::structType_t::baz_t::~baz_t() {
}
