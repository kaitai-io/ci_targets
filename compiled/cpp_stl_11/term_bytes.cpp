// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "term_bytes.h"

term_bytes_t::term_bytes_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, term_bytes_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void term_bytes_t::_read() {
    m_s1 = m__io->read_bytes_term(124, false, true, true);
    m_s2 = m__io->read_bytes_term(124, false, false, true);
    m_s3 = m__io->read_bytes_term(64, true, true, true);
}

term_bytes_t::~term_bytes_t() {
    _cleanUp();
}

void term_bytes_t::_cleanUp() {
}
