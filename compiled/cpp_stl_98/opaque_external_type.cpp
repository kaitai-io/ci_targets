// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "opaque_external_type.h"
#include "term_strz.h"

opaqueExternalType_t::opaqueExternalType_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, opaqueExternalType_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_one = 0;
    _read();
}

void opaqueExternalType_t::_read() {
    m_one = new termStrz_t(m__io);
}

opaqueExternalType_t::~opaqueExternalType_t() {
    delete m_one;
}
