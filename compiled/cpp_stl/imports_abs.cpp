// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "imports_abs.h"


#include "vlq_base128_le.h"

imports_abs_t::imports_abs_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, imports_abs_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void imports_abs_t::_read() {
    m_len = new vlq_base128_le_t(m__io);
    m_body = m__io->read_bytes(len()->value());
}

imports_abs_t::~imports_abs_t() {
    delete m_len;
}
