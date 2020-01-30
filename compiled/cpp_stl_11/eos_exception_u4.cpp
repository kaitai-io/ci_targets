// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "eos_exception_u4.h"

eos_exception_u4_t::eos_exception_u4_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, eos_exception_u4_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_envelope = nullptr;
    m__io__raw_envelope = nullptr;
    _read();
}

void eos_exception_u4_t::_read() {
    m__raw_envelope = m__io->read_bytes(6);
    m__io__raw_envelope = new kaitai::kstream(m__raw_envelope);
    m_envelope = std::unique_ptr<data_t>(new data_t(m__io__raw_envelope, this, m__root));
}

eos_exception_u4_t::~eos_exception_u4_t() {
    delete m__io__raw_envelope;
}

eos_exception_u4_t::data_t::data_t(kaitai::kstream* p__io, eos_exception_u4_t* p__parent, eos_exception_u4_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void eos_exception_u4_t::data_t::_read() {
    m_prebuf = m__io->read_bytes(3);
    m_fail_int = m__io->read_u4le();
}

eos_exception_u4_t::data_t::~data_t() {
}
