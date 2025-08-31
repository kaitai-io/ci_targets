// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "opaque_external_type.h"

opaque_external_type_t::opaque_external_type_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, opaque_external_type_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_hw = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void opaque_external_type_t::_read() {
    m_hw = new hello_world_t(m__io);
}

opaque_external_type_t::~opaque_external_type_t() {
    _clean_up();
}

void opaque_external_type_t::_clean_up() {
    if (m_hw) {
        delete m_hw; m_hw = 0;
    }
}
