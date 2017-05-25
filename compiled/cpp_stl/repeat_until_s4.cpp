// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_until_s4.h"



repeat_until_s4_t::repeat_until_s4_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, repeat_until_s4_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void repeat_until_s4_t::_read() {
    m_entries = new std::vector<int32_t>();
    {
        int32_t _;
        do {
            _ = m__io->read_s4le();
            m_entries->push_back(_);
        } while (!(_ == -(1)));
    }
    m_afterall = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("ASCII"));
}

repeat_until_s4_t::~repeat_until_s4_t() {
    delete m_entries;
}
