// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "str_encodings_escaping_enc.h"

str_encodings_escaping_enc_t::str_encodings_escaping_enc_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, str_encodings_escaping_enc_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_str1 = 0;
    m__io__raw_str1 = 0;
    m_str2 = 0;
    m__io__raw_str2 = 0;
    m_str3 = 0;
    m__io__raw_str3 = 0;
    m_str4 = 0;
    m__io__raw_str4 = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void str_encodings_escaping_enc_t::_read() {
    m_len_of_1 = m__io->read_u2le();
    m__raw_str1 = m__io->read_bytes(len_of_1());
    m__io__raw_str1 = new kaitai::kstream(m__raw_str1);
    m_str1 = new str1_wrapper_t(m__io__raw_str1, this, m__root);
    m_len_of_2 = m__io->read_u2le();
    m__raw_str2 = m__io->read_bytes(len_of_2());
    m__io__raw_str2 = new kaitai::kstream(m__raw_str2);
    m_str2 = new str2_wrapper_t(m__io__raw_str2, this, m__root);
    m_len_of_3 = m__io->read_u2le();
    m__raw_str3 = m__io->read_bytes(len_of_3());
    m__io__raw_str3 = new kaitai::kstream(m__raw_str3);
    m_str3 = new str3_wrapper_t(m__io__raw_str3, this, m__root);
    m_len_of_4 = m__io->read_u2le();
    m__raw_str4 = m__io->read_bytes(len_of_4());
    m__io__raw_str4 = new kaitai::kstream(m__raw_str4);
    m_str4 = new str4_wrapper_t(m__io__raw_str4, this, m__root);
}

str_encodings_escaping_enc_t::~str_encodings_escaping_enc_t() {
    _clean_up();
}

void str_encodings_escaping_enc_t::_clean_up() {
    if (m__io__raw_str1) {
        delete m__io__raw_str1; m__io__raw_str1 = 0;
    }
    if (m_str1) {
        delete m_str1; m_str1 = 0;
    }
    if (m__io__raw_str2) {
        delete m__io__raw_str2; m__io__raw_str2 = 0;
    }
    if (m_str2) {
        delete m_str2; m_str2 = 0;
    }
    if (m__io__raw_str3) {
        delete m__io__raw_str3; m__io__raw_str3 = 0;
    }
    if (m_str3) {
        delete m_str3; m_str3 = 0;
    }
    if (m__io__raw_str4) {
        delete m__io__raw_str4; m__io__raw_str4 = 0;
    }
    if (m_str4) {
        delete m_str4; m_str4 = 0;
    }
}

str_encodings_escaping_enc_t::str1_wrapper_t::str1_wrapper_t(kaitai::kstream* p__io, str_encodings_escaping_enc_t* p__parent, str_encodings_escaping_enc_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_v = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
