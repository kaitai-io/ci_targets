// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "optional_id.h"



optional_id_t::optional_id_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, optional_id_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void optional_id_t::_read() {
    m__unnamed0 = m__io->read_u1();
    m__unnamed1 = m__io->read_u1();
    m__unnamed2 = m__io->read_bytes(5);
}

optional_id_t::~optional_id_t() {
}
