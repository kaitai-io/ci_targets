// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "str_encodings_escaping_to_s.h"

str_encodings_escaping_to_s_t::str_encodings_escaping_to_s_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, str_encodings_escaping_to_s_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_str1 = false;
    f_str2 = false;
    f_str3 = false;
    f_str4 = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void str_encodings_escaping_to_s_t::_read() {
    m_len_of_1 = m__io->read_u2le();
    m_str1_raw = m__io->read_bytes(len_of_1());
    m_len_of_2 = m__io->read_u2le();
    m_str2_raw = m__io->read_bytes(len_of_2());
    m_len_of_3 = m__io->read_u2le();
    m_str3_raw = m__io->read_bytes(len_of_3());
    m_len_of_4 = m__io->read_u2le();
    m_str4_raw = m__io->read_bytes(len_of_4());
}

str_encodings_escaping_to_s_t::~str_encodings_escaping_to_s_t() {
    _clean_up();
}

void str_encodings_escaping_to_s_t::_clean_up() {
}

std::string str_encodings_escaping_to_s_t::str1() {
    if (f_str1)
        return m_str1;
    m_str1 = kaitai::kstream::bytes_to_str(str1_raw(), "ASCII\\x");
    f_str1 = true;
    return m_str1;
}

std::string str_encodings_escaping_to_s_t::str2() {
    if (f_str2)
        return m_str2;
    m_str2 = kaitai::kstream::bytes_to_str(str2_raw(), "UTF-8\'x");
    f_str2 = true;
    return m_str2;
}

std::string str_encodings_escaping_to_s_t::str3() {
    if (f_str3)
        return m_str3;
    m_str3 = kaitai::kstream::bytes_to_str(str3_raw(), "SJIS\"x");
    f_str3 = true;
    return m_str3;
}

std::string str_encodings_escaping_to_s_t::str4() {
    if (f_str4)
        return m_str4;
    m_str4 = kaitai::kstream::bytes_to_str(str4_raw(), "IBM437\nx");
    f_str4 = true;
    return m_str4;
}
