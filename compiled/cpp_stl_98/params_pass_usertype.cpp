// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "params_pass_usertype.h"

paramsPassUsertype_t::paramsPassUsertype_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, paramsPassUsertype_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_first = 0;
    m_one = 0;
    _read();
}

void paramsPassUsertype_t::_read() {
    m_first = new block_t(m__io, this, m__root);
    m_one = new paramType_t(first(), m__io, this, m__root);
}

paramsPassUsertype_t::~paramsPassUsertype_t() {
    delete m_first;
    delete m_one;
}

paramsPassUsertype_t::block_t::block_t(kaitai::kstream* p__io, paramsPassUsertype_t* p__parent, paramsPassUsertype_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void paramsPassUsertype_t::block_t::_read() {
    m_foo = m__io->read_u1();
}

paramsPassUsertype_t::block_t::~block_t() {
}

paramsPassUsertype_t::paramType_t::paramType_t(block_t* p_foo, kaitai::kstream* p__io, paramsPassUsertype_t* p__parent, paramsPassUsertype_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_foo = p_foo;
    _read();
}

void paramsPassUsertype_t::paramType_t::_read() {
    m_buf = m__io->read_bytes(foo()->foo());
}

paramsPassUsertype_t::paramType_t::~paramType_t() {
}
