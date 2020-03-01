// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "enum_for_unknown_id.h"

enumForUnknownId_t::enumForUnknownId_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enumForUnknownId_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void enumForUnknownId_t::_read() {
    m_one = static_cast<enumForUnknownId_t::animal_t>(m__io->read_u1());
}

enumForUnknownId_t::~enumForUnknownId_t() {
}
