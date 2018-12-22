// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "imports_abs.h"

#include <memory>
#include "vlq_base128_le.h"

imports_abs_t::imports_abs_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, imports_abs_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_len = nullptr;
    _read();
}

void imports_abs_t::_read() {
    m_len = std::make_unique<vlq_base128_le_t>(m__io);
    m_body = m__io->read_bytes(len()->value());
}

imports_abs_t::~imports_abs_t() {
}
