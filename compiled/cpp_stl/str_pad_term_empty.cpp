// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "str_pad_term_empty.h"



str_pad_term_empty_t::str_pad_term_empty_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, str_pad_term_empty_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void str_pad_term_empty_t::_read() {
    m_str_pad = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 64), std::string("UTF-8"));
    m_str_term = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_terminate(m__io->read_bytes(20), 64, false), std::string("UTF-8"));
    m_str_term_and_pad = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 43), 64, false), std::string("UTF-8"));
    m_str_term_include = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_terminate(m__io->read_bytes(20), 64, true), std::string("UTF-8"));
}

str_pad_term_empty_t::~str_pad_term_empty_t() {
    // str_pad: StrFromBytesType(BytesLimitType(IntNum(20),None,false,Some(64),None),UTF-8), isArray=false, hasRaw=false, hasIO=false
    // str_term: StrFromBytesType(BytesLimitType(IntNum(20),Some(64),false,None,None),UTF-8), isArray=false, hasRaw=false, hasIO=false
    // str_term_and_pad: StrFromBytesType(BytesLimitType(IntNum(20),Some(64),false,Some(43),None),UTF-8), isArray=false, hasRaw=false, hasIO=false
    // str_term_include: StrFromBytesType(BytesLimitType(IntNum(20),Some(64),true,None,None),UTF-8), isArray=false, hasRaw=false, hasIO=false
}
