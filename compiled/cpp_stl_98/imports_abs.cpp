// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "imports_abs.h"

imports_abs_t::imports_abs_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, imports_abs_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_len = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void imports_abs_t::_read() {
    m_len = new vlq_base128_le_t(m__io);
    m_body = m__io->read_bytes(len()->value());
}

imports_abs_t::~imports_abs_t() {
    _clean_up();
}

void imports_abs_t::_clean_up() {
    if (m_len) {
        delete m_len; m_len = 0;
    }
}
