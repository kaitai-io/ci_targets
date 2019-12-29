// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "optional_id.h"

optional_id_t::optional_id_t(kaitai::kstream* p__io, std::unique_ptr<kaitai::kstruct> p__parent, optional_id_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
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
