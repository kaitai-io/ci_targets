// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "enum_for_unknown_id.h"

enum_for_unknown_id_t::enum_for_unknown_id_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_for_unknown_id_t* /* p__root */) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void enum_for_unknown_id_t::_read() {
    m_one = static_cast<enum_for_unknown_id_t::animal_t>(m__io->read_u1());
}

enum_for_unknown_id_t::~enum_for_unknown_id_t() {
}
