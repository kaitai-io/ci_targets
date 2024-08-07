// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "term_strz_utf16_v2.h"

term_strz_utf16_v2_t::term_strz_utf16_v2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, term_strz_utf16_v2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    _read();
}

void term_strz_utf16_v2_t::_read() {
    m_s1 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term_multi(std::string("\x00\x00", 2), false, true, true), "UTF-16LE");
    m_s2 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term_multi(std::string("\x00\x00", 2), true, true, true), "UTF-16LE");
    m_s3 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term_multi(std::string("\x00\x00", 2), false, false, true), "UTF-16LE");
}

term_strz_utf16_v2_t::~term_strz_utf16_v2_t() {
    _clean_up();
}

void term_strz_utf16_v2_t::_clean_up() {
}
