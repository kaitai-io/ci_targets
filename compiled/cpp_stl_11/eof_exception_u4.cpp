// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "eof_exception_u4.h"

eofExceptionU4_t::eofExceptionU4_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, eofExceptionU4_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void eofExceptionU4_t::_read() {
    m_prebuf = m__io->read_bytes(9);
    m_fail_int = m__io->read_u4le();
}

eofExceptionU4_t::~eofExceptionU4_t() {
}
