// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "term_bytes2.h"

term_bytes2_t::term_bytes2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, term_bytes2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    _read();
}

void term_bytes2_t::_read() {
    m_s1 = m__io->read_bytes_term(124, false, true, true);
    m_s2 = m__io->read_bytes_term(124, true, true, true);
    m_s3 = m__io->read_bytes_term(64, false, false, true);
}

term_bytes2_t::~term_bytes2_t() {
    _clean_up();
}

void term_bytes2_t::_clean_up() {
}
