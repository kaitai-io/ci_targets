// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include <repeat_eos_bit.h>

repeat_eos_bit_t::repeat_eos_bit_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeat_eos_bit_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_nibbles = 0;
    _read();
}

void repeat_eos_bit_t::_read() {
    m_nibbles = new std::vector<uint64_t>();
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_nibbles->push_back(m__io->read_bits_int(4));
            i++;
        }
    }
}

repeat_eos_bit_t::~repeat_eos_bit_t() {
    delete m_nibbles;
}
