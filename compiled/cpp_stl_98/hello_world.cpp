// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "hello_world.h"

hello_world_t::hello_world_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, hello_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void hello_world_t::_read() {
    m_one = m__io->read_u1();
}

hello_world_t::~hello_world_t() {
    _clean_up();
}

void hello_world_t::_clean_up() {
}
