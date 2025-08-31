// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "eof_exception_bits_le.h"

eof_exception_bits_le_t::eof_exception_bits_le_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, eof_exception_bits_le_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
}

void eof_exception_bits_le_t::_read() {
    m_pre_bits = m__io->read_bits_int_le(7);
    m_fail_bits = m__io->read_bits_int_le(18);
}

eof_exception_bits_le_t::~eof_exception_bits_le_t() {
    _clean_up();
}

void eof_exception_bits_le_t::_clean_up() {
}
