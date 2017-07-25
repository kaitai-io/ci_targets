// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "term_strz.h"



term_strz_t::term_strz_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, term_strz_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void term_strz_t::_read() {
    m_s1 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(124, false, true, true), std::string("UTF-8"));
    m_s2 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(124, false, false, true), std::string("UTF-8"));
    m_s3 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(64, true, true, true), std::string("UTF-8"));
}

term_strz_t::~term_strz_t() {
    // s1: StrFromBytesType(BytesTerminatedType(124,false,true,true,None),UTF-8), isArray=false, hasRaw=false, hasIO=false
    // s2: StrFromBytesType(BytesTerminatedType(124,false,false,true,None),UTF-8), isArray=false, hasRaw=false, hasIO=false
    // s3: StrFromBytesType(BytesTerminatedType(64,true,true,true,None),UTF-8), isArray=false, hasRaw=false, hasIO=false
}
