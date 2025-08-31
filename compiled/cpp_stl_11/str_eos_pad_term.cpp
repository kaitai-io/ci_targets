// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "str_eos_pad_term.h"

str_eos_pad_term_t::str_eos_pad_term_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, str_eos_pad_term_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_str_pad = nullptr;
    m__io__raw_str_pad = nullptr;
    m_str_term = nullptr;
    m__io__raw_str_term = nullptr;
    m_str_term_and_pad = nullptr;
    m__io__raw_str_term_and_pad = nullptr;
    m_str_term_include = nullptr;
    m__io__raw_str_term_include = nullptr;
    _read();
}

void str_eos_pad_term_t::_read() {
    m__raw_str_pad = m__io->read_bytes(20);
    m__io__raw_str_pad = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_str_pad));
    m_str_pad = std::unique_ptr<str_pad_type_t>(new str_pad_type_t(m__io__raw_str_pad.get(), this, m__root));
    m__raw_str_term = m__io->read_bytes(20);
    m__io__raw_str_term = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_str_term));
    m_str_term = std::unique_ptr<str_term_type_t>(new str_term_type_t(m__io__raw_str_term.get(), this, m__root));
    m__raw_str_term_and_pad = m__io->read_bytes(20);
    m__io__raw_str_term_and_pad = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_str_term_and_pad));
    m_str_term_and_pad = std::unique_ptr<str_term_and_pad_type_t>(new str_term_and_pad_type_t(m__io__raw_str_term_and_pad.get(), this, m__root));
    m__raw_str_term_include = m__io->read_bytes(20);
    m__io__raw_str_term_include = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_str_term_include));
    m_str_term_include = std::unique_ptr<str_term_include_type_t>(new str_term_include_type_t(m__io__raw_str_term_include.get(), this, m__root));
}

str_eos_pad_term_t::~str_eos_pad_term_t() {
    _clean_up();
}

void str_eos_pad_term_t::_clean_up() {
}

str_eos_pad_term_t::str_pad_type_t::str_pad_type_t(kaitai::kstream* p__io, str_eos_pad_term_t* p__parent, str_eos_pad_term_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void str_eos_pad_term_t::str_pad_type_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes_full(), 64), "UTF-8");
}

str_eos_pad_term_t::str_pad_type_t::~str_pad_type_t() {
    _clean_up();
}

void str_eos_pad_term_t::str_pad_type_t::_clean_up() {
}

str_eos_pad_term_t::str_term_and_pad_type_t::str_term_and_pad_type_t(kaitai::kstream* p__io, str_eos_pad_term_t* p__parent, str_eos_pad_term_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void str_eos_pad_term_t::str_term_and_pad_type_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes_full(), 43), 64, false), "UTF-8");
}

str_eos_pad_term_t::str_term_and_pad_type_t::~str_term_and_pad_type_t() {
    _clean_up();
}

void str_eos_pad_term_t::str_term_and_pad_type_t::_clean_up() {
}

str_eos_pad_term_t::str_term_include_type_t::str_term_include_type_t(kaitai::kstream* p__io, str_eos_pad_term_t* p__parent, str_eos_pad_term_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void str_eos_pad_term_t::str_term_include_type_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_terminate(m__io->read_bytes_full(), 64, true), "UTF-8");
}

str_eos_pad_term_t::str_term_include_type_t::~str_term_include_type_t() {
    _clean_up();
}

void str_eos_pad_term_t::str_term_include_type_t::_clean_up() {
}

str_eos_pad_term_t::str_term_type_t::str_term_type_t(kaitai::kstream* p__io, str_eos_pad_term_t* p__parent, str_eos_pad_term_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void str_eos_pad_term_t::str_term_type_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_terminate(m__io->read_bytes_full(), 64, false), "UTF-8");
}

str_eos_pad_term_t::str_term_type_t::~str_term_type_t() {
    _clean_up();
}

void str_eos_pad_term_t::str_term_type_t::_clean_up() {
}
