// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "opaque_external_type.h"

#include <iostream>
#include <fstream>
#include "term_strz.h"

opaque_external_type_t::opaque_external_type_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, opaque_external_type_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    m_one = new term_strz_t(m__io);
}

opaque_external_type_t::~opaque_external_type_t() {
    delete m_one;
}
