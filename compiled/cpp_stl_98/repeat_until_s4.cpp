// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "repeat_until_s4.h"

repeatUntilS4_t::repeatUntilS4_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeatUntilS4_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_entries = 0;
    _read();
}

void repeatUntilS4_t::_read() {
    m_entries = new std::vector<int32_t>();
    {
        int i = 0;
        int32_t _;
        do {
            _ = m__io->read_s4le();
            m_entries->push_back(_);
            i++;
        } while (!(_ == -1));
    }
    m_afterall = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("ASCII"));
}

repeatUntilS4_t::~repeatUntilS4_t() {
    delete m_entries;
}
