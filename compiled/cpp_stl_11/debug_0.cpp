// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "debug_0.h"

debug0_t::debug0_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, debug0_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_array_of_ints = nullptr;
}

void debug0_t::_read() {
    m_one = m__io->read_u1();
    int l_array_of_ints = 3;
    m_array_of_ints = std::unique_ptr<std::vector<uint8_t>>(new std::vector<uint8_t>());
    m_array_of_ints->reserve(l_array_of_ints);
    for (int i = 0; i < l_array_of_ints; i++) {
        m_array_of_ints->push_back(std::move(m__io->read_u1()));
    }
    m__unnamed2 = m__io->read_u1();
}

debug0_t::~debug0_t() {
}
