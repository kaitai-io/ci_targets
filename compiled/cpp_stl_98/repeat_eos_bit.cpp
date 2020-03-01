// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "repeat_eos_bit.h"

repeatEosBit_t::repeatEosBit_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeatEosBit_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_nibbles = 0;
    _read();
}

void repeatEosBit_t::_read() {
    m_nibbles = new std::vector<uint64_t>();
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_nibbles->push_back(m__io->read_bits_int(4));
            i++;
        }
    }
}

repeatEosBit_t::~repeatEosBit_t() {
    delete m_nibbles;
}
