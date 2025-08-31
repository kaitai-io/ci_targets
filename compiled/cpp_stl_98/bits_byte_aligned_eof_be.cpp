// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "bits_byte_aligned_eof_be.h"

bits_byte_aligned_eof_be_t::bits_byte_aligned_eof_be_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, bits_byte_aligned_eof_be_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void bits_byte_aligned_eof_be_t::_read() {
    m_prebuf = m__io->read_bytes(8);
    m_bits = m__io->read_bits_int_be(31);
}

bits_byte_aligned_eof_be_t::~bits_byte_aligned_eof_be_t() {
    _clean_up();
}

void bits_byte_aligned_eof_be_t::_clean_up() {
}
