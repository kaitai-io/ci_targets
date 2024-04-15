// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "eof_exception_sized.h"

eof_exception_sized_t::eof_exception_sized_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, eof_exception_sized_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_buf = 0;
    m__io__raw_buf = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void eof_exception_sized_t::_read() {
    m__raw_buf = m__io->read_bytes(13);
    m__io__raw_buf = new kaitai::kstream(m__raw_buf);
    m_buf = new foo_t(m__io__raw_buf, this, m__root);
}

eof_exception_sized_t::~eof_exception_sized_t() {
    _clean_up();
}

void eof_exception_sized_t::_clean_up() {
    if (m__io__raw_buf) {
        delete m__io__raw_buf; m__io__raw_buf = 0;
    }
    if (m_buf) {
        delete m_buf; m_buf = 0;
    }
}

eof_exception_sized_t::foo_t::foo_t(kaitai::kstream* p__io, eof_exception_sized_t* p__parent, eof_exception_sized_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void eof_exception_sized_t::foo_t::_read() {
}

eof_exception_sized_t::foo_t::~foo_t() {
    _clean_up();
}

void eof_exception_sized_t::foo_t::_clean_up() {
}
