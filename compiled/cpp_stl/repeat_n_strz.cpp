// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_n_strz.h"

#include <iostream>
#include <fstream>

repeat_n_strz_t::repeat_n_strz_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, repeat_n_strz_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
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
