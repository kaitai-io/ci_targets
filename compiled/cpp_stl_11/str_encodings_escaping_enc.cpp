// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "str_encodings_escaping_enc.h"

str_encodings_escaping_enc_t::str_encodings_escaping_enc_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, str_encodings_escaping_enc_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_str1 = nullptr;
    m__io__raw_str1 = nullptr;
    m_str2 = nullptr;
    m__io__raw_str2 = nullptr;
    m_str3 = nullptr;
    m__io__raw_str3 = nullptr;
    m_str4 = nullptr;
    m__io__raw_str4 = nullptr;
    _read();
}

void str_encodings_escaping_enc_t::_read() {
    m_len_of_1 = m__io->read_u2le();
    m__raw_str1 = m__io->read_bytes(len_of_1());
    m__io__raw_str1 = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_str1));
    m_str1 = std::unique_ptr<str1_wrapper_t>(new str1_wrapper_t(m__io__raw_str1.get(), this, m__root));
    m_len_of_2 = m__io->read_u2le();
    m__raw_str2 = m__io->read_bytes(len_of_2());
    m__io__raw_str2 = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_str2));
    m_str2 = std::unique_ptr<str2_wrapper_t>(new str2_wrapper_t(m__io__raw_str2.get(), this, m__root));
    m_len_of_3 = m__io->read_u2le();
    m__raw_str3 = m__io->read_bytes(len_of_3());
    m__io__raw_str3 = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_str3));
    m_str3 = std::unique_ptr<str3_wrapper_t>(new str3_wrapper_t(m__io__raw_str3.get(), this, m__root));
    m_len_of_4 = m__io->read_u2le();
    m__raw_str4 = m__io->read_bytes(len_of_4());
    m__io__raw_str4 = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_str4));
    m_str4 = std::unique_ptr<str4_wrapper_t>(new str4_wrapper_t(m__io__raw_str4.get(), this, m__root));
}

str_encodings_escaping_enc_t::~str_encodings_escaping_enc_t() {
    _clean_up();
}

void str_encodings_escaping_enc_t::_clean_up() {
}

str_encodings_escaping_enc_t::str1_wrapper_t::str1_wrapper_t(kaitai::kstream* p__io, str_encodings_escaping_enc_t* p__parent, str_encodings_escaping_enc_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_v = false;
    _read();
}

void str_encodings_escaping_enc_t::str1_wrapper_t::_read() {
}

str_encodings_escaping_enc_t::str1_wrapper_t::~str1_wrapper_t() {
    _clean_up();
}

void str_encodings_escaping_enc_t::str1_wrapper_t::_clean_up() {
    if (f_v) {
    }
}

std::string str_encodings_escaping_enc_t::str1_wrapper_t::v() {
    if (f_v)
        return m_v;
    std::streampos _pos = m__io->pos();
    m__io->seek(0);
    m_v = kaitai::kstream::bytes_to_str(m__io->read_bytes_full(), "ASCII\\\\x");
    m__io->seek(_pos);
    f_v = true;
    return m_v;
}

str_encodings_escaping_enc_t::str2_wrapper_t::str2_wrapper_t(kaitai::kstream* p__io, str_encodings_escaping_enc_t* p__parent, str_encodings_escaping_enc_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_v = false;
    _read();
}

void str_encodings_escaping_enc_t::str2_wrapper_t::_read() {
}

str_encodings_escaping_enc_t::str2_wrapper_t::~str2_wrapper_t() {
    _clean_up();
}

void str_encodings_escaping_enc_t::str2_wrapper_t::_clean_up() {
    if (f_v) {
    }
}

std::string str_encodings_escaping_enc_t::str2_wrapper_t::v() {
    if (f_v)
        return m_v;
    std::streampos _pos = m__io->pos();
    m__io->seek(0);
    m_v = kaitai::kstream::bytes_to_str(m__io->read_bytes_full(), "UTF-8\\'x");
    m__io->seek(_pos);
    f_v = true;
    return m_v;
}

str_encodings_escaping_enc_t::str3_wrapper_t::str3_wrapper_t(kaitai::kstream* p__io, str_encodings_escaping_enc_t* p__parent, str_encodings_escaping_enc_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_v = false;
    _read();
}

void str_encodings_escaping_enc_t::str3_wrapper_t::_read() {
}

str_encodings_escaping_enc_t::str3_wrapper_t::~str3_wrapper_t() {
    _clean_up();
}

void str_encodings_escaping_enc_t::str3_wrapper_t::_clean_up() {
    if (f_v) {
    }
}

std::string str_encodings_escaping_enc_t::str3_wrapper_t::v() {
    if (f_v)
        return m_v;
    std::streampos _pos = m__io->pos();
    m__io->seek(0);
    m_v = kaitai::kstream::bytes_to_str(m__io->read_bytes_full(), "SJIS\\\"x");
    m__io->seek(_pos);
    f_v = true;
    return m_v;
}

str_encodings_escaping_enc_t::str4_wrapper_t::str4_wrapper_t(kaitai::kstream* p__io, str_encodings_escaping_enc_t* p__parent, str_encodings_escaping_enc_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_v = false;
    _read();
}

void str_encodings_escaping_enc_t::str4_wrapper_t::_read() {
}

str_encodings_escaping_enc_t::str4_wrapper_t::~str4_wrapper_t() {
    _clean_up();
}

void str_encodings_escaping_enc_t::str4_wrapper_t::_clean_up() {
    if (f_v) {
    }
}

std::string str_encodings_escaping_enc_t::str4_wrapper_t::v() {
    if (f_v)
        return m_v;
    std::streampos _pos = m__io->pos();
    m__io->seek(0);
    m_v = kaitai::kstream::bytes_to_str(m__io->read_bytes_full(), "IBM437\\nx");
    m__io->seek(_pos);
    f_v = true;
    return m_v;
}
