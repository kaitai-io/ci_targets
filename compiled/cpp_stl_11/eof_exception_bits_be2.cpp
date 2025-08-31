// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "eof_exception_bits_be2.h"

eof_exception_bits_be2_t::eof_exception_bits_be2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, eof_exception_bits_be2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
}

void eof_exception_bits_be2_t::_read() {
    m_pre_bits = m__io->read_bits_int_be(8);
    m_fail_bits = m__io->read_bits_int_be(17);
}

eof_exception_bits_be2_t::~eof_exception_bits_be2_t() {
    _clean_up();
}

void eof_exception_bits_be2_t::_clean_up() {
}
