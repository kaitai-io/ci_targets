// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "eof_exception_u4.h"

#include <iostream>
#include <fstream>

eof_exception_u4_t::eof_exception_u4_t(kaitai::kstream *p_io, kaitai::kstruct *p_parent, eof_exception_u4_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    m_prebuf = m__io->read_bytes(9);
    m_fail_int = m__io->read_u4le();
}

eof_exception_u4_t::~eof_exception_u4_t() {
}
