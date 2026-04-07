// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_eos_bits_b1.h"

repeat_eos_bits_b1_t::repeat_eos_bits_b1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeat_eos_bits_b1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    _read();
}

void repeat_eos_bits_b1_t::_read() {
    m_bits = std::unique_ptr<std::vector<bool>>(new std::vector<bool>());
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_bits->push_back(std::move(m__io->read_bits_int_be(1)));
            i++;
        }
    }
}

repeat_eos_bits_b1_t::~repeat_eos_bits_b1_t() {}
