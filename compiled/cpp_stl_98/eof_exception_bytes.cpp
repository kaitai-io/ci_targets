// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "eof_exception_bytes.h"

eof_exception_bytes_t::eof_exception_bytes_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, eof_exception_bytes_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void eof_exception_bytes_t::_read() {
    m_buf = m__io->read_bytes(13);
}

eof_exception_bytes_t::~eof_exception_bytes_t() {
    _clean_up();
}

void eof_exception_bytes_t::_clean_up() {
}
