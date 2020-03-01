// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "nested_types2.h"

nestedTypes2_t::nestedTypes2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nestedTypes2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_one = nullptr;
    m_two = nullptr;
    _read();
}

void nestedTypes2_t::_read() {
    m_one = std::unique_ptr<subtypeA_t>(new subtypeA_t(m__io, this, m__root));
    m_two = std::unique_ptr<subtypeB_t>(new subtypeB_t(m__io, this, m__root));
}

nestedTypes2_t::~nestedTypes2_t() {
}

nestedTypes2_t::subtypeA_t::subtypeA_t(kaitai::kstream* p__io, nestedTypes2_t* p__parent, nestedTypes2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_typed_at_root = nullptr;
    m_typed_here1 = nullptr;
    m_typed_here2 = nullptr;
    _read();
}

void nestedTypes2_t::subtypeA_t::_read() {
    m_typed_at_root = std::unique_ptr<subtypeB_t>(new subtypeB_t(m__io, this, m__root));
    m_typed_here1 = std::unique_ptr<subtypeC_t>(new subtypeC_t(m__io, this, m__root));
    m_typed_here2 = std::unique_ptr<subtypeCc_t>(new subtypeCc_t(m__io, this, m__root));
}

nestedTypes2_t::subtypeA_t::~subtypeA_t() {
}

nestedTypes2_t::subtypeA_t::subtypeC_t::subtypeC_t(kaitai::kstream* p__io, nestedTypes2_t::subtypeA_t* p__parent, nestedTypes2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_typed_here = nullptr;
    m_typed_parent = nullptr;
    m_typed_root = nullptr;
    _read();
}

void nestedTypes2_t::subtypeA_t::subtypeC_t::_read() {
    m_value_c = m__io->read_s1();
    m_typed_here = std::unique_ptr<subtypeD_t>(new subtypeD_t(m__io, this, m__root));
    m_typed_parent = std::unique_ptr<subtypeCc_t>(new subtypeCc_t(m__io, this, m__root));
    m_typed_root = std::unique_ptr<subtypeB_t>(new subtypeB_t(m__io, this, m__root));
}

nestedTypes2_t::subtypeA_t::subtypeC_t::~subtypeC_t() {
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
