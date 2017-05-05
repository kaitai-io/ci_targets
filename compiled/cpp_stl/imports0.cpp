// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "imports0.h"


#include "hello_world.h"

imports0_t::imports0_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, imports0_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    f_hw_one = false;
    m_two = m__io->read_u1();
    m_hw = new hello_world_t(m__io);
}

imports0_t::~imports0_t() {
    delete m_hw;
}

uint8_t imports0_t::hw_one() {
    if (f_hw_one)
        return m_hw_one;
    m_hw_one = hw()->one();
    f_hw_one = true;
    return m_hw_one;
}
