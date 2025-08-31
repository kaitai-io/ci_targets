// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "struct_pad_term.h"

struct_pad_term_t::struct_pad_term_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, struct_pad_term_t* p__root) : kaitai::kstruct(p__io) {
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

void struct_pad_term_t::_read() {
    m__raw_str_pad = kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 64);
    m__io__raw_str_pad = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_str_pad));
    m_str_pad = std::unique_ptr<bytes_wrapper_t>(new bytes_wrapper_t(m__io__raw_str_pad.get(), this, m__root));
    m__raw_str_term = kaitai::kstream::bytes_terminate(m__io->read_bytes(20), 64, false);
    m__io__raw_str_term = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_str_term));
    m_str_term = std::unique_ptr<bytes_wrapper_t>(new bytes_wrapper_t(m__io__raw_str_term.get(), this, m__root));
    m__raw_str_term_and_pad = kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 43), 64, false);
    m__io__raw_str_term_and_pad = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_str_term_and_pad));
    m_str_term_and_pad = std::unique_ptr<bytes_wrapper_t>(new bytes_wrapper_t(m__io__raw_str_term_and_pad.get(), this, m__root));
    m__raw_str_term_include = kaitai::kstream::bytes_terminate(m__io->read_bytes(20), 64, true);
    m__io__raw_str_term_include = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_str_term_include));
    m_str_term_include = std::unique_ptr<bytes_wrapper_t>(new bytes_wrapper_t(m__io__raw_str_term_include.get(), this, m__root));
}

struct_pad_term_t::~struct_pad_term_t() {
    _clean_up();
}

void struct_pad_term_t::_clean_up() {
}

struct_pad_term_t::bytes_wrapper_t::bytes_wrapper_t(kaitai::kstream* p__io, struct_pad_term_t* p__parent, struct_pad_term_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void struct_pad_term_t::bytes_wrapper_t::_read() {
    m_value = m__io->read_bytes_full();
}

struct_pad_term_t::bytes_wrapper_t::~bytes_wrapper_t() {
    _clean_up();
}

void struct_pad_term_t::bytes_wrapper_t::_clean_up() {
}
