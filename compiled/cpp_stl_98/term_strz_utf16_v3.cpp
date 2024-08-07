// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "term_strz_utf16_v3.h"

term_strz_utf16_v3_t::term_strz_utf16_v3_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, term_strz_utf16_v3_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void term_strz_utf16_v3_t::_read() {
    m_s1 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term_multi(std::string("\x00\x00", 2), false, false, true), "UTF-16LE");
    m_term = m__io->read_u2le();
    m_s2 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term_multi(std::string("\x00\x00", 2), false, false, true), "UTF-16LE");
    m_s3 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term_multi(std::string("\x00\x00", 2), false, true, true), "UTF-16LE");
}

term_strz_utf16_v3_t::~term_strz_utf16_v3_t() {
    _clean_up();
}

void term_strz_utf16_v3_t::_clean_up() {
}
