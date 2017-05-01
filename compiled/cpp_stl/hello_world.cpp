// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "hello_world.h"

#include <iostream>
#include <fstream>

hello_world_t::hello_world_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, hello_world_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    m_one = m__io->read_u1();
}

hello_world_t::~hello_world_t() {
}
