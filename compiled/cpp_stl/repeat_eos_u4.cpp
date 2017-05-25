// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_eos_u4.h"



repeat_eos_u4_t::repeat_eos_u4_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, repeat_eos_u4_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void repeat_eos_u4_t::_read() {
    m_numbers = new std::vector<uint32_t>();
    while (!m__io->is_eof()) {
        m_numbers->push_back(m__io->read_u4le());
    }
}

repeat_eos_u4_t::~repeat_eos_u4_t() {
    delete m_numbers;
}
