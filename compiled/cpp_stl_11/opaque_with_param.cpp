// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "opaque_with_param.h"
#include "params_def.h"

opaqueWithParam_t::opaqueWithParam_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, opaqueWithParam_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_one = nullptr;
    _read();
}

void opaqueWithParam_t::_read() {
    m_one = std::unique_ptr<paramsDef_t>(new paramsDef_t(5, true, m__io));
}

opaqueWithParam_t::~opaqueWithParam_t() {
}
