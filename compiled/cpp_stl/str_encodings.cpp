// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "str_encodings.h"



str_encodings_t::str_encodings_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, str_encodings_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void str_encodings_t::_read() {
    m_len_of_1 = m__io->read_u2le();
    m_str1 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_1()), std::string("ASCII"));
    m_len_of_2 = m__io->read_u2le();
    m_str2 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_2()), std::string("UTF-8"));
    m_len_of_3 = m__io->read_u2le();
    m_str3 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_3()), std::string("SJIS"));
    m_len_of_4 = m__io->read_u2le();
    m_str4 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_4()), std::string("CP437"));
}

str_encodings_t::~str_encodings_t() {
    // len_of_1: IntMultiType(false,Width2,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // str1: StrFromBytesType(BytesLimitType(Name(identifier(len_of_1)),None,false,None,None),ASCII), isArray=false, hasRaw=false, hasIO=false
    // len_of_2: IntMultiType(false,Width2,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // str2: StrFromBytesType(BytesLimitType(Name(identifier(len_of_2)),None,false,None,None),UTF-8), isArray=false, hasRaw=false, hasIO=false
    // len_of_3: IntMultiType(false,Width2,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // str3: StrFromBytesType(BytesLimitType(Name(identifier(len_of_3)),None,false,None,None),SJIS), isArray=false, hasRaw=false, hasIO=false
    // len_of_4: IntMultiType(false,Width2,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // str4: StrFromBytesType(BytesLimitType(Name(identifier(len_of_4)),None,false,None,None),CP437), isArray=false, hasRaw=false, hasIO=false
}
