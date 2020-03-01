// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "repeat_eos_bit.h"

repeatEosBit_t::repeatEosBit_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeatEosBit_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_nibbles = nullptr;
    _read();
}

void repeatEosBit_t::_read() {
    m_nibbles = std::unique_ptr<std::vector<uint64_t>>(new std::vector<uint64_t>());
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_nibbles->push_back(std::move(m__io->read_bits_int(4)));
            i++;
        }
    }
}

repeatEosBit_t::~repeatEosBit_t() {
}
