// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "eos_exception_bytes.h"

eosExceptionBytes_t::eosExceptionBytes_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, eosExceptionBytes_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_envelope = nullptr;
    m__io__raw_envelope = nullptr;
    _read();
}

void eosExceptionBytes_t::_read() {
    m__raw_envelope = m__io->read_bytes(6);
    m__io__raw_envelope = new kaitai::kstream(m__raw_envelope);
    m_envelope = std::unique_ptr<data_t>(new data_t(m__io__raw_envelope, this, m__root));
}

eosExceptionBytes_t::~eosExceptionBytes_t() {
    delete m__io__raw_envelope;
}

eosExceptionBytes_t::data_t::data_t(kaitai::kstream* p__io, eosExceptionBytes_t* p__parent, eosExceptionBytes_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void eosExceptionBytes_t::data_t::_read() {
    m_buf = m__io->read_bytes(7);
}

eosExceptionBytes_t::data_t::~data_t() {
}
