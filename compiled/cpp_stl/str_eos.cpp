// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "str_eos.h"



str_eos_t::str_eos_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, str_eos_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void str_eos_t::_read() {
    m_str = kaitai::kstream::bytes_to_str(m__io->read_bytes_full(), std::string("UTF-8"));
}

str_eos_t::~str_eos_t() {
    // str: StrFromBytesType(BytesEosType(None,false,None,None),UTF-8), isArray=false, hasRaw=false, hasIO=false
}
