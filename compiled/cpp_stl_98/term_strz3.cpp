// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "term_strz3.h"

term_strz3_t::term_strz3_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, term_strz3_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void term_strz3_t::_read() {
    m_s1 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(124, false, false, true), "UTF-8");
    m_s2 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(64, false, false, true), "UTF-8");
    m_s3 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(64, false, true, true), "UTF-8");
}

term_strz3_t::~term_strz3_t() {
    _clean_up();
}

void term_strz3_t::_clean_up() {
}
