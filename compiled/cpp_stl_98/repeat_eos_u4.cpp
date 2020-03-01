// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "repeat_eos_u4.h"

repeatEosU4_t::repeatEosU4_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeatEosU4_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_numbers = 0;
    _read();
}

void repeatEosU4_t::_read() {
    m_numbers = new std::vector<uint32_t>();
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_numbers->push_back(m__io->read_u4le());
            i++;
        }
    }
}

repeatEosU4_t::~repeatEosU4_t() {
    delete m_numbers;
}
