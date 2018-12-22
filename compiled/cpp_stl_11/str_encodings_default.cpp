// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "str_encodings_default.h"



str_encodings_default_t::str_encodings_default_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, str_encodings_default_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_rest = 0;
    _read();
}

void str_encodings_default_t::_read() {
    m_len_of_1 = m__io->read_u2le();
    m_str1 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_1()), std::string("UTF-8"));
    m_rest = new subtype_t(m__io, this, m__root);
}

str_encodings_default_t::~str_encodings_default_t() {
    delete m_rest;
}

str_encodings_default_t::subtype_t::subtype_t(kaitai::kstream* p__io, str_encodings_default_t* p__parent, str_encodings_default_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
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
}
