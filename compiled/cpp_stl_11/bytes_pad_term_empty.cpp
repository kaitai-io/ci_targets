// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "bytes_pad_term_empty.h"

bytes_pad_term_empty_t::bytes_pad_term_empty_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, bytes_pad_term_empty_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    _read();
}

void bytes_pad_term_empty_t::_read() {
    m_str_pad = kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 64);
    m_str_term = kaitai::kstream::bytes_terminate(m__io->read_bytes(20), 64, false);
    m_str_term_and_pad = kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 43), 64, false);
    m_str_term_include = kaitai::kstream::bytes_terminate(m__io->read_bytes(20), 64, true);
}

bytes_pad_term_empty_t::~bytes_pad_term_empty_t() {
    _clean_up();
}

void bytes_pad_term_empty_t::_clean_up() {
}
