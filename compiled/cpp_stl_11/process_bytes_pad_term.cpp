// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "process_bytes_pad_term.h"

process_bytes_pad_term_t::process_bytes_pad_term_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, process_bytes_pad_term_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    _read();
}

void process_bytes_pad_term_t::_read() {
    m__raw_str_pad = kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 64);
    m_str_pad = kaitai::kstream::process_xor_one(m__raw_str_pad, 21);
    m__raw_str_term = kaitai::kstream::bytes_terminate(m__io->read_bytes(20), 64, false);
    m_str_term = kaitai::kstream::process_xor_one(m__raw_str_term, 21);
    m__raw_str_term_and_pad = kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 43), 64, false);
    m_str_term_and_pad = kaitai::kstream::process_xor_one(m__raw_str_term_and_pad, 21);
    m__raw_str_term_include = kaitai::kstream::bytes_terminate(m__io->read_bytes(20), 64, true);
    m_str_term_include = kaitai::kstream::process_xor_one(m__raw_str_term_include, 21);
}

process_bytes_pad_term_t::~process_bytes_pad_term_t() {
    _clean_up();
}

void process_bytes_pad_term_t::_clean_up() {
}
