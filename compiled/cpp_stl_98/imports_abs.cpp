// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "imports_abs.h"
#include "vlq_base128_le.h"

importsAbs_t::importsAbs_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, importsAbs_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_len = 0;
    _read();
}

void importsAbs_t::_read() {
    m_len = new vlqBase128Le_t(m__io);
    m_body = m__io->read_bytes(len()->value());
}

importsAbs_t::~importsAbs_t() {
    delete m_len;
}
