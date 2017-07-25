// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "str_encodings_default.h"



str_encodings_default_t::str_encodings_default_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, str_encodings_default_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void str_encodings_default_t::_read() {
    m_len_of_1 = m__io->read_u2le();
    m_str1 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_1()), std::string("UTF-8"));
    m_rest = new subtype_t(m__io, this, m__root);
}

str_encodings_default_t::~str_encodings_default_t() {
    // len_of_1: IntMultiType(false,Width2,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // str1: StrFromBytesType(BytesLimitType(Name(identifier(len_of_1)),None,false,None,None),UTF-8), isArray=false, hasRaw=false, hasIO=false
    // rest: UserTypeInstream(List(subtype),None), isArray=false, hasRaw=false, hasIO=false
    delete m_rest;
}

str_encodings_default_t::subtype_t::subtype_t(kaitai::kstream *p_io, str_encodings_default_t* p_parent, str_encodings_default_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void str_encodings_default_t::subtype_t::_read() {
    m_len_of_2 = m__io->read_u2le();
    m_str2 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_2()), std::string("UTF-8"));
    m_len_of_3 = m__io->read_u2le();
    m_str3 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_3()), std::string("SJIS"));
    m_len_of_4 = m__io->read_u2le();
    m_str4 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_4()), std::string("CP437"));
}

str_encodings_default_t::subtype_t::~subtype_t() {
    // len_of_2: IntMultiType(false,Width2,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // str2: StrFromBytesType(BytesLimitType(Name(identifier(len_of_2)),None,false,None,None),UTF-8), isArray=false, hasRaw=false, hasIO=false
    // len_of_3: IntMultiType(false,Width2,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // str3: StrFromBytesType(BytesLimitType(Name(identifier(len_of_3)),None,false,None,None),SJIS), isArray=false, hasRaw=false, hasIO=false
    // len_of_4: IntMultiType(false,Width2,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // str4: StrFromBytesType(BytesLimitType(Name(identifier(len_of_4)),None,false,None,None),CP437), isArray=false, hasRaw=false, hasIO=false
}
