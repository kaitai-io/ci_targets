// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "str_pad_term_empty.h"

str_pad_term_empty_t::str_pad_term_empty_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, str_pad_term_empty_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void str_pad_term_empty_t::_read() {
    m_str_pad = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 64), "UTF-8");
    m_str_term = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_terminate(m__io->read_bytes(20), 64, false), "UTF-8");
    m_str_term_and_pad = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 43), 64, false), "UTF-8");
    m_str_term_include = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_terminate(m__io->read_bytes(20), 64, true), "UTF-8");
}

str_pad_term_empty_t::~str_pad_term_empty_t() {
    _clean_up();
}

void str_pad_term_empty_t::_clean_up() {
}
