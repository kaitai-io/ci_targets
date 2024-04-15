// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "imports0.h"

imports0_t::imports0_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, imports0_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_hw = 0;
    f_hw_one = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void imports0_t::_read() {
    m_two = m__io->read_u1();
    m_hw = new hello_world_t(m__io);
}

imports0_t::~imports0_t() {
    _clean_up();
}

void imports0_t::_clean_up() {
    if (m_hw) {
        delete m_hw; m_hw = 0;
    }
}

uint8_t imports0_t::hw_one() {
    if (f_hw_one)
        return m_hw_one;
    m_hw_one = hw()->one();
    f_hw_one = true;
    return m_hw_one;
}
