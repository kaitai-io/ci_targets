// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_n_strz.h"



repeat_n_strz_t::repeat_n_strz_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeat_n_strz_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void repeat_n_strz_t::_read() {
    m_qty = m__io->read_u4le();
    int l_lines = qty();
    m_lines = new std::vector<std::string>();
    m_lines->reserve(l_lines);
    for (int i = 0; i < l_lines; i++) {
        m_lines->push_back(kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("UTF-8")));
    }
}

repeat_n_strz_t::~repeat_n_strz_t() {
    delete m_lines;
}
