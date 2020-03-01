// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "optional_id.h"

optionalId_t::optionalId_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, optionalId_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void optionalId_t::_read() {
    m__unnamed0 = m__io->read_u1();
    m__unnamed1 = m__io->read_u1();
    m__unnamed2 = m__io->read_bytes(5);
}

optionalId_t::~optionalId_t() {
}
