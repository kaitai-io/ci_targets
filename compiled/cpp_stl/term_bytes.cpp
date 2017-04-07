// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "term_bytes.h"

#include <iostream>
#include <fstream>

term_bytes_t::term_bytes_t(kaitai::kstream *p_io, kaitai::kstruct *p_parent, term_bytes_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    m_s1 = m__io->read_bytes_term(124, false, true, true);
    m_s2 = m__io->read_bytes_term(124, false, false, true);
    m_s3 = m__io->read_bytes_term(64, true, true, true);
}

term_bytes_t::~term_bytes_t() {
}
