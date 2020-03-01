// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "eof_exception_bytes.h"

eofExceptionBytes_t::eofExceptionBytes_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, eofExceptionBytes_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void eofExceptionBytes_t::_read() {
    m_buf = m__io->read_bytes(13);
}

eofExceptionBytes_t::~eofExceptionBytes_t() {
}
