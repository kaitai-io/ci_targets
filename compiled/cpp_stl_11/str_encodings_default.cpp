// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "str_encodings_default.h"

str_encodings_default_t::str_encodings_default_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, str_encodings_default_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_rest = nullptr;
    _read();
}

void str_encodings_default_t::_read() {
    m_len_of_1 = m__io->read_u2le();
    m_str1 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_1()), "UTF-8");
    m_rest = std::unique_ptr<subtype_t>(new subtype_t(m__io, this, m__root));
}

str_encodings_default_t::~str_encodings_default_t() {
    _clean_up();
}

void str_encodings_default_t::_clean_up() {
}

str_encodings_default_t::subtype_t::subtype_t(kaitai::kstream* p__io, str_encodings_default_t* p__parent, str_encodings_default_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void str_encodings_default_t::subtype_t::_read() {
    m_len_of_2 = m__io->read_u2le();
    m_str2 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_2()), "UTF-8");
    m_len_of_3 = m__io->read_u2le();
    m_str3 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_3()), "SJIS");
    m_len_of_4 = m__io->read_u2le();
    m_str4 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_4()), "IBM437");
}

str_encodings_default_t::subtype_t::~subtype_t() {
    _clean_up();
}

void str_encodings_default_t::subtype_t::_clean_up() {
}
