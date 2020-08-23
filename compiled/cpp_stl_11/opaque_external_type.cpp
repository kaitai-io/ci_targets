// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "opaque_external_type.h"

opaque_external_type_t::opaque_external_type_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, opaque_external_type_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_one = nullptr;
    _read();
}

void opaque_external_type_t::_read() {
    m_one = std::unique_ptr<term_strz_t>(new term_strz_t(m__io));
}

opaque_external_type_t::~opaque_external_type_t() {
    _clean_up();
}

void opaque_external_type_t::_clean_up() {
}
