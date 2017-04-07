// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "enum_for_unknown_id.h"

#include <iostream>
#include <fstream>

enum_for_unknown_id_t::enum_for_unknown_id_t(kaitai::kstream *p_io, kaitai::kstruct *p_parent, enum_for_unknown_id_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    m_one = static_cast<enum_for_unknown_id_t::animal_t>(m__io->read_u1());
}

enum_for_unknown_id_t::~enum_for_unknown_id_t() {
}
