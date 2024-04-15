// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "eof_exception_u4.h"

eof_exception_u4_t::eof_exception_u4_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, eof_exception_u4_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    _read();
}

void eof_exception_u4_t::_read() {
    m_prebuf = m__io->read_bytes(9);
    m_fail_int = m__io->read_u4le();
}

eof_exception_u4_t::~eof_exception_u4_t() {
    _clean_up();
}

void eof_exception_u4_t::_clean_up() {
}
