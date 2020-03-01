// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "nested_types2.h"

nestedTypes2_t::nestedTypes2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nestedTypes2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_one = 0;
    m_two = 0;
    _read();
}

void nestedTypes2_t::_read() {
    m_one = new subtypeA_t(m__io, this, m__root);
    m_two = new subtypeB_t(m__io, this, m__root);
}

nestedTypes2_t::~nestedTypes2_t() {
    delete m_one;
    delete m_two;
}

nestedTypes2_t::subtypeA_t::subtypeA_t(kaitai::kstream* p__io, nestedTypes2_t* p__parent, nestedTypes2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_typed_at_root = 0;
    m_typed_here1 = 0;
    m_typed_here2 = 0;
    _read();
}

void nestedTypes2_t::subtypeA_t::_read() {
    m_typed_at_root = new subtypeB_t(m__io, this, m__root);
    m_typed_here1 = new subtypeC_t(m__io, this, m__root);
    m_typed_here2 = new subtypeCc_t(m__io, this, m__root);
}

nestedTypes2_t::subtypeA_t::~subtypeA_t() {
    delete m_typed_at_root;
    delete m_typed_here1;
    delete m_typed_here2;
}

nestedTypes2_t::subtypeA_t::subtypeC_t::subtypeC_t(kaitai::kstream* p__io, nestedTypes2_t::subtypeA_t* p__parent, nestedTypes2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_typed_here = 0;
    m_typed_parent = 0;
    m_typed_root = 0;
    _read();
}

void nestedTypes2_t::subtypeA_t::subtypeC_t::_read() {
    m_value_c = m__io->read_s1();
    m_typed_here = new subtypeD_t(m__io, this, m__root);
    m_typed_parent = new subtypeCc_t(m__io, this, m__root);
    m_typed_root = new subtypeB_t(m__io, this, m__root);
}

nestedTypes2_t::subtypeA_t::subtypeC_t::~subtypeC_t() {
    delete m_typed_here;
    delete m_typed_parent;
    delete m_typed_root;
}

nestedTypes2_t::subtypeA_t::subtypeC_t::subtypeD_t::subtypeD_t(kaitai::kstream* p__io, nestedTypes2_t::subtypeA_t::subtypeC_t* p__parent, nestedTypes2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nestedTypes2_t::subtypeA_t::subtypeC_t::subtypeD_t::_read() {
    m_value_d = m__io->read_s1();
}

nestedTypes2_t::subtypeA_t::subtypeC_t::subtypeD_t::~subtypeD_t() {
}

nestedTypes2_t::subtypeA_t::subtypeCc_t::subtypeCc_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nestedTypes2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nestedTypes2_t::subtypeA_t::subtypeCc_t::_read() {
    m_value_cc = m__io->read_s1();
}

nestedTypes2_t::subtypeA_t::subtypeCc_t::~subtypeCc_t() {
}

nestedTypes2_t::subtypeB_t::subtypeB_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nestedTypes2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nestedTypes2_t::subtypeB_t::_read() {
    m_value_b = m__io->read_s1();
}

nestedTypes2_t::subtypeB_t::~subtypeB_t() {
}
