// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "hello_world.h"

hello_world_t::hello_world_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, hello_world_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;

    try {
        _read();
    } catch(...) {
        this->~hello_world_t();
        throw;
    }
}

void hello_world_t::_read() {
    m_one = m__io->read_u1();
}

hello_world_t::~hello_world_t() {
}
