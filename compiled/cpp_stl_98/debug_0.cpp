// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "debug_0.h"

debug_0_t::debug_0_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, debug_0_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_array_of_ints = 0;
}

void debug_0_t::_read() {
    m_one = m__io->read_u1();
    m_array_of_ints = new std::vector<uint8_t>();
    const int l_array_of_ints = 3;
    for (int i = 0; i < l_array_of_ints; i++) {
        m_array_of_ints->push_back(m__io->read_u1());
    }
    m__unnamed2 = m__io->read_u1();
}

debug_0_t::~debug_0_t() {
    _clean_up();
}

void debug_0_t::_clean_up() {
    if (m_array_of_ints) {
        delete m_array_of_ints; m_array_of_ints = 0;
    }
}
