// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "str_encodings_default.h"

#include <iostream>
#include <fstream>

str_encodings_default_t::str_encodings_default_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, str_encodings_default_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    m_len_of_1 = m__io->read_u2le();
    m_str1 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_1()), std::string("UTF-8"));
    m_rest = new subtype_t(m__io, this, m__root);
}

str_encodings_default_t::~str_encodings_default_t() {
    delete m_rest;
}

str_encodings_default_t::subtype_t::subtype_t(kaitai::kstream *p_io, str_encodings_default_t* p_parent, str_encodings_default_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m_len_of_2 = m__io->read_u2le();
    m_str2 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_2()), std::string("UTF-8"));
    m_len_of_3 = m__io->read_u2le();
    m_str3 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_3()), std::string("SJIS"));
    m_len_of_4 = m__io->read_u2le();
    m_str4 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_4()), std::string("CP437"));
}

str_encodings_default_t::subtype_t::~subtype_t() {
}
