// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "nested_types.h"

nestedTypes_t::nestedTypes_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nestedTypes_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_one = nullptr;
    m_two = nullptr;
    _read();
}

void nestedTypes_t::_read() {
    m_one = std::unique_ptr<subtypeA_t>(new subtypeA_t(m__io, this, m__root));
    m_two = std::unique_ptr<subtypeB_t>(new subtypeB_t(m__io, this, m__root));
}

nestedTypes_t::~nestedTypes_t() {
}

nestedTypes_t::subtypeA_t::subtypeA_t(kaitai::kstream* p__io, nestedTypes_t* p__parent, nestedTypes_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_typed_at_root = nullptr;
    m_typed_here = nullptr;
    _read();
}

void nestedTypes_t::subtypeA_t::_read() {
    m_typed_at_root = std::unique_ptr<subtypeB_t>(new subtypeB_t(m__io, this, m__root));
    m_typed_here = std::unique_ptr<subtypeC_t>(new subtypeC_t(m__io, this, m__root));
}

nestedTypes_t::subtypeA_t::~subtypeA_t() {
}

nestedTypes_t::subtypeA_t::subtypeC_t::subtypeC_t(kaitai::kstream* p__io, nestedTypes_t::subtypeA_t* p__parent, nestedTypes_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nestedTypes_t::subtypeA_t::subtypeC_t::_read() {
    m_value_c = m__io->read_s1();
}

nestedTypes_t::subtypeA_t::subtypeC_t::~subtypeC_t() {
}

nestedTypes_t::subtypeB_t::subtypeB_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nestedTypes_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nestedTypes_t::subtypeB_t::_read() {
    m_value_b = m__io->read_s1();
}

nestedTypes_t::subtypeB_t::~subtypeB_t() {
}
