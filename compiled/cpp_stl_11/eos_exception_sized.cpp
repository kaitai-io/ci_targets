// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "eos_exception_sized.h"

eos_exception_sized_t::eos_exception_sized_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, eos_exception_sized_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_envelope = nullptr;
    m__io__raw_envelope = nullptr;
    _read();
}

void eos_exception_sized_t::_read() {
    m__raw_envelope = m__io->read_bytes(6);
    m__io__raw_envelope = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_envelope));
    m_envelope = std::unique_ptr<data_t>(new data_t(m__io__raw_envelope.get(), this, m__root));
}

eos_exception_sized_t::~eos_exception_sized_t() {
    _clean_up();
}

void eos_exception_sized_t::_clean_up() {
}

eos_exception_sized_t::data_t::data_t(kaitai::kstream* p__io, eos_exception_sized_t* p__parent, eos_exception_sized_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_buf = nullptr;
    m__io__raw_buf = nullptr;
    _read();
}

void eos_exception_sized_t::data_t::_read() {
    m__raw_buf = m__io->read_bytes(7);
    m__io__raw_buf = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_buf));
    m_buf = std::unique_ptr<foo_t>(new foo_t(m__io__raw_buf.get(), this, m__root));
}

eos_exception_sized_t::data_t::~data_t() {
    _clean_up();
}

void eos_exception_sized_t::data_t::_clean_up() {
}

eos_exception_sized_t::foo_t::foo_t(kaitai::kstream* p__io, eos_exception_sized_t::data_t* p__parent, eos_exception_sized_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void eos_exception_sized_t::foo_t::_read() {
}

eos_exception_sized_t::foo_t::~foo_t() {
    _clean_up();
}

void eos_exception_sized_t::foo_t::_clean_up() {
}
