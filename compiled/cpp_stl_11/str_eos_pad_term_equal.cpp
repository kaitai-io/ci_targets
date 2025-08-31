// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "str_eos_pad_term_equal.h"

str_eos_pad_term_equal_t::str_eos_pad_term_equal_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, str_eos_pad_term_equal_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_s1 = nullptr;
    m__io__raw_s1 = nullptr;
    m_s2 = nullptr;
    m__io__raw_s2 = nullptr;
    m_s3 = nullptr;
    m__io__raw_s3 = nullptr;
    m_s4 = nullptr;
    m__io__raw_s4 = nullptr;
    _read();
}

void str_eos_pad_term_equal_t::_read() {
    m__raw_s1 = m__io->read_bytes(20);
    m__io__raw_s1 = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_s1));
    m_s1 = std::unique_ptr<s1_type_t>(new s1_type_t(m__io__raw_s1.get(), this, m__root));
    m__raw_s2 = m__io->read_bytes(20);
    m__io__raw_s2 = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_s2));
    m_s2 = std::unique_ptr<s2_type_t>(new s2_type_t(m__io__raw_s2.get(), this, m__root));
    m__raw_s3 = m__io->read_bytes(20);
    m__io__raw_s3 = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_s3));
    m_s3 = std::unique_ptr<s3_type_t>(new s3_type_t(m__io__raw_s3.get(), this, m__root));
    m__raw_s4 = m__io->read_bytes(20);
    m__io__raw_s4 = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_s4));
    m_s4 = std::unique_ptr<s4_type_t>(new s4_type_t(m__io__raw_s4.get(), this, m__root));
}

str_eos_pad_term_equal_t::~str_eos_pad_term_equal_t() {
    _clean_up();
}

void str_eos_pad_term_equal_t::_clean_up() {
}

str_eos_pad_term_equal_t::s1_type_t::s1_type_t(kaitai::kstream* p__io, str_eos_pad_term_equal_t* p__parent, str_eos_pad_term_equal_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void str_eos_pad_term_equal_t::s1_type_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes_full(), 64), 64, false), "UTF-8");
}

str_eos_pad_term_equal_t::s1_type_t::~s1_type_t() {
    _clean_up();
}

void str_eos_pad_term_equal_t::s1_type_t::_clean_up() {
}

str_eos_pad_term_equal_t::s2_type_t::s2_type_t(kaitai::kstream* p__io, str_eos_pad_term_equal_t* p__parent, str_eos_pad_term_equal_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void str_eos_pad_term_equal_t::s2_type_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes_full(), 43), 64, true), "UTF-8");
}

str_eos_pad_term_equal_t::s2_type_t::~s2_type_t() {
    _clean_up();
}

void str_eos_pad_term_equal_t::s2_type_t::_clean_up() {
}

str_eos_pad_term_equal_t::s3_type_t::s3_type_t(kaitai::kstream* p__io, str_eos_pad_term_equal_t* p__parent, str_eos_pad_term_equal_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void str_eos_pad_term_equal_t::s3_type_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes_full(), 43), 43, false), "UTF-8");
}

str_eos_pad_term_equal_t::s3_type_t::~s3_type_t() {
    _clean_up();
}

void str_eos_pad_term_equal_t::s3_type_t::_clean_up() {
}

str_eos_pad_term_equal_t::s4_type_t::s4_type_t(kaitai::kstream* p__io, str_eos_pad_term_equal_t* p__parent, str_eos_pad_term_equal_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void str_eos_pad_term_equal_t::s4_type_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes_full(), 46), 46, true), "UTF-8");
}

str_eos_pad_term_equal_t::s4_type_t::~s4_type_t() {
    _clean_up();
}

void str_eos_pad_term_equal_t::s4_type_t::_clean_up() {
}
