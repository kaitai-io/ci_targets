// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "process_struct_pad_term.h"

process_struct_pad_term_t::process_struct_pad_term_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, process_struct_pad_term_t* p__root) : kaitai::kstruct(p__io) {
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

void process_struct_pad_term_t::_read() {
    m__raw__raw_str_pad = kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 64);
    m__raw_str_pad = kaitai::kstream::process_xor_one(m__raw__raw_str_pad, 21);
    m__io__raw_str_pad = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_str_pad));
    m_str_pad = std::unique_ptr<bytes_wrapper_t>(new bytes_wrapper_t(m__io__raw_str_pad.get(), this, m__root));
    m__raw__raw_str_term = kaitai::kstream::bytes_terminate(m__io->read_bytes(20), 64, false);
    m__raw_str_term = kaitai::kstream::process_xor_one(m__raw__raw_str_term, 21);
    m__io__raw_str_term = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_str_term));
    m_str_term = std::unique_ptr<bytes_wrapper_t>(new bytes_wrapper_t(m__io__raw_str_term.get(), this, m__root));
    m__raw__raw_str_term_and_pad = kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 43), 64, false);
    m__raw_str_term_and_pad = kaitai::kstream::process_xor_one(m__raw__raw_str_term_and_pad, 21);
    m__io__raw_str_term_and_pad = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_str_term_and_pad));
    m_str_term_and_pad = std::unique_ptr<bytes_wrapper_t>(new bytes_wrapper_t(m__io__raw_str_term_and_pad.get(), this, m__root));
    m__raw__raw_str_term_include = kaitai::kstream::bytes_terminate(m__io->read_bytes(20), 64, true);
    m__raw_str_term_include = kaitai::kstream::process_xor_one(m__raw__raw_str_term_include, 21);
    m__io__raw_str_term_include = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_str_term_include));
    m_str_term_include = std::unique_ptr<bytes_wrapper_t>(new bytes_wrapper_t(m__io__raw_str_term_include.get(), this, m__root));
}

process_struct_pad_term_t::~process_struct_pad_term_t() {
    _clean_up();
}

void process_struct_pad_term_t::_clean_up() {
}

process_struct_pad_term_t::bytes_wrapper_t::bytes_wrapper_t(kaitai::kstream* p__io, process_struct_pad_term_t* p__parent, process_struct_pad_term_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void process_struct_pad_term_t::bytes_wrapper_t::_read() {
    m_value = m__io->read_bytes_full();
}

process_struct_pad_term_t::bytes_wrapper_t::~bytes_wrapper_t() {
    _clean_up();
}

void process_struct_pad_term_t::bytes_wrapper_t::_clean_up() {
}
