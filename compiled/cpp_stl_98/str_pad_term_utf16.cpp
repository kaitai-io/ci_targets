// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "str_pad_term_utf16.h"

str_pad_term_utf16_t::str_pad_term_utf16_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, str_pad_term_utf16_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void str_pad_term_utf16_t::_read() {
    m_str_term = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_terminate_multi(m__io->read_bytes(10), std::string("\x00\x00", 2), false), "UTF-16LE");
    m_str_term_include = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_terminate_multi(m__io->read_bytes(10), std::string("\x00\x00", 2), true), "UTF-16LE");
    m_str_term_and_pad = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_terminate_multi(kaitai::kstream::bytes_strip_right(m__io->read_bytes(9), 43), std::string("\x00\x00", 2), false), "UTF-16LE");
}

str_pad_term_utf16_t::~str_pad_term_utf16_t() {
    _clean_up();
}

void str_pad_term_utf16_t::_clean_up() {
}
