// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "hello_world.h"

helloWorld_t::helloWorld_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, helloWorld_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void helloWorld_t::_read() {
    m_one = m__io->read_u1();
}

helloWorld_t::~helloWorld_t() {
}
