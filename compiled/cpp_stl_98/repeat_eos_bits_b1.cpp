// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_eos_bits_b1.h"

repeat_eos_bits_b1_t::repeat_eos_bits_b1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeat_eos_bits_b1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_bits = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void repeat_eos_bits_b1_t::_read() {
    m_bits = new std::vector<bool>();
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_bits->push_back(m__io->read_bits_int_be(1));
            i++;
        }
    }
}

repeat_eos_bits_b1_t::~repeat_eos_bits_b1_t() {
    _clean_up();
}

void repeat_eos_bits_b1_t::_clean_up() {
    if (m_bits) {
        delete m_bits; m_bits = 0;
    }
}
