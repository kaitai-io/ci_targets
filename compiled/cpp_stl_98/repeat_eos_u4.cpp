// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_eos_u4.h"

repeat_eos_u4_t::repeat_eos_u4_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeat_eos_u4_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_numbers = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void repeat_eos_u4_t::_read() {
    m_numbers = new std::vector<uint32_t>();
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_numbers->push_back(m__io->read_u4le());
            i++;
        }
    }
}

repeat_eos_u4_t::~repeat_eos_u4_t() {
    _clean_up();
}

void repeat_eos_u4_t::_clean_up() {
    if (m_numbers) {
        delete m_numbers; m_numbers = 0;
    }
}
