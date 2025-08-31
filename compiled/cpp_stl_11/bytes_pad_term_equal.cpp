// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "bytes_pad_term_equal.h"

bytes_pad_term_equal_t::bytes_pad_term_equal_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, bytes_pad_term_equal_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    _read();
}

void bytes_pad_term_equal_t::_read() {
    m_s1 = kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 64), 64, false);
    m_s2 = kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 43), 64, true);
    m_s3 = kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 43), 43, false);
    m_s4 = kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 46), 46, true);
}

bytes_pad_term_equal_t::~bytes_pad_term_equal_t() {
    _clean_up();
}

void bytes_pad_term_equal_t::_clean_up() {
}
