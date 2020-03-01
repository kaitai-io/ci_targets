// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "opaque_external_type_02_parent.h"
#include "opaque_external_type_02_child.h"

opaqueExternalType02Parent_t::opaqueExternalType02Parent_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, opaqueExternalType02Parent_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_parent = nullptr;
    _read();
}

void opaqueExternalType02Parent_t::_read() {
    m_parent = std::unique_ptr<parentObj_t>(new parentObj_t(m__io, this, m__root));
}

opaqueExternalType02Parent_t::~opaqueExternalType02Parent_t() {
}

opaqueExternalType02Parent_t::parentObj_t::parentObj_t(kaitai::kstream* p__io, opaqueExternalType02Parent_t* p__parent, opaqueExternalType02Parent_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_child = nullptr;
    _read();
}

void opaqueExternalType02Parent_t::parentObj_t::_read() {
    m_child = std::unique_ptr<opaqueExternalType02Child_t>(new opaqueExternalType02Child_t(m__io));
}

opaqueExternalType02Parent_t::parentObj_t::~parentObj_t() {
}
