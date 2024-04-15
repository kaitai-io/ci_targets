// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "eos_exception_bytes.h"

eos_exception_bytes_t::eos_exception_bytes_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, eos_exception_bytes_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_envelope = 0;
    m__io__raw_envelope = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void eos_exception_bytes_t::_read() {
    m__raw_envelope = m__io->read_bytes(6);
    m__io__raw_envelope = new kaitai::kstream(m__raw_envelope);
    m_envelope = new data_t(m__io__raw_envelope, this, m__root);
}

eos_exception_bytes_t::~eos_exception_bytes_t() {
    _clean_up();
}

void eos_exception_bytes_t::_clean_up() {
    if (m__io__raw_envelope) {
        delete m__io__raw_envelope; m__io__raw_envelope = 0;
    }
    if (m_envelope) {
        delete m_envelope; m_envelope = 0;
    }
}

eos_exception_bytes_t::data_t::data_t(kaitai::kstream* p__io, eos_exception_bytes_t* p__parent, eos_exception_bytes_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void eos_exception_bytes_t::data_t::_read() {
    m_buf = m__io->read_bytes(7);
}

eos_exception_bytes_t::data_t::~data_t() {
    _clean_up();
}

void eos_exception_bytes_t::data_t::_clean_up() {
}
