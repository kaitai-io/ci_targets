// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "repeat_n_strz.h"

repeatNStrz_t::repeatNStrz_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeatNStrz_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_lines = 0;
    _read();
}

void repeatNStrz_t::_read() {
    m_qty = m__io->read_u4le();
    int l_lines = qty();
    m_lines = new std::vector<std::string>();
    m_lines->reserve(l_lines);
    for (int i = 0; i < l_lines; i++) {
        m_lines->push_back(kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("UTF-8")));
    }
}

repeatNStrz_t::~repeatNStrz_t() {
    delete m_lines;
}
