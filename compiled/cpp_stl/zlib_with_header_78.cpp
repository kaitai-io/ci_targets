// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "zlib_with_header_78.h"



zlib_with_header_78_t::zlib_with_header_78_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, zlib_with_header_78_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void zlib_with_header_78_t::_read() {
    m__raw_data = m__io->read_bytes_full();
    m_data = kaitai::kstream::process_zlib(m__raw_data);
}

zlib_with_header_78_t::~zlib_with_header_78_t() {
    // data: BytesEosType(None,false,None,Some(ProcessZlib)), isArray=false, hasRaw=false, hasIO=false
}
