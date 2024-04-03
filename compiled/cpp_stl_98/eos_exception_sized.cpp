// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "eos_exception_sized.h"

eos_exception_sized_t::eos_exception_sized_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, eos_exception_sized_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_envelope = 0;
    m__io__raw_envelope = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void eos_exception_sized_t::_read() {
    m__raw_envelope = m__io->read_bytes(6);
    m__io__raw_envelope = new kaitai::kstream(m__raw_envelope);
    m_envelope = new data_t(m__io__raw_envelope, this, m__root);
}

eos_exception_sized_t::~eos_exception_sized_t() {
    _clean_up();
}

void eos_exception_sized_t::_clean_up() {
    if (m__io__raw_envelope) {
        delete m__io__raw_envelope; m__io__raw_envelope = 0;
    }
    if (m_envelope) {
        delete m_envelope; m_envelope = 0;
    }
}

eos_exception_sized_t::data_t::data_t(kaitai::kstream* p__io, eos_exception_sized_t* p__parent, eos_exception_sized_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_buf = 0;
    m__io__raw_buf = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void eos_exception_sized_t::data_t::_read() {
    m__raw_buf = m__io->read_bytes(7);
    m__io__raw_buf = new kaitai::kstream(m__raw_buf);
    m_buf = new foo_t(m__io__raw_buf, this, m__root);
}

eos_exception_sized_t::data_t::~data_t() {
    _clean_up();
}

void eos_exception_sized_t::data_t::_clean_up() {
    if (m__io__raw_buf) {
        delete m__io__raw_buf; m__io__raw_buf = 0;
    }
    if (m_buf) {
        delete m_buf; m_buf = 0;
    }
}

eos_exception_sized_t::foo_t::foo_t(kaitai::kstream* p__io, eos_exception_sized_t::data_t* p__parent, eos_exception_sized_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void eos_exception_sized_t::foo_t::_read() {
}

eos_exception_sized_t::foo_t::~foo_t() {
    _clean_up();
}

void eos_exception_sized_t::foo_t::_clean_up() {
}
