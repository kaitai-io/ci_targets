// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "eof_exception_sized.h"

eof_exception_sized_t::eof_exception_sized_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, eof_exception_sized_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_buf = nullptr;
    m__io__raw_buf = nullptr;
    _read();
}

void eof_exception_sized_t::_read() {
    m__raw_buf = m__io->read_bytes(13);
    m__io__raw_buf = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_buf));
    m_buf = std::unique_ptr<foo_t>(new foo_t(m__io__raw_buf.get(), this, m__root));
}

eof_exception_sized_t::~eof_exception_sized_t() {
    _clean_up();
}

void eof_exception_sized_t::_clean_up() {
}

eof_exception_sized_t::foo_t::foo_t(kaitai::kstream* p__io, eof_exception_sized_t* p__parent, eof_exception_sized_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void eof_exception_sized_t::foo_t::_read() {
}

eof_exception_sized_t::foo_t::~foo_t() {
    _clean_up();
}

void eof_exception_sized_t::foo_t::_clean_up() {
}
