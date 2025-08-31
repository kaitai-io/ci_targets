// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "struct_pad_term_equal.h"

struct_pad_term_equal_t::struct_pad_term_equal_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, struct_pad_term_equal_t* p__root) : kaitai::kstruct(p__io) {
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

void struct_pad_term_equal_t::_read() {
    m__raw_s1 = kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 64), 64, false);
    m__io__raw_s1 = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_s1));
    m_s1 = std::unique_ptr<bytes_wrapper_t>(new bytes_wrapper_t(m__io__raw_s1.get(), this, m__root));
    m__raw_s2 = kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 43), 64, true);
    m__io__raw_s2 = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_s2));
    m_s2 = std::unique_ptr<bytes_wrapper_t>(new bytes_wrapper_t(m__io__raw_s2.get(), this, m__root));
    m__raw_s3 = kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 43), 43, false);
    m__io__raw_s3 = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_s3));
    m_s3 = std::unique_ptr<bytes_wrapper_t>(new bytes_wrapper_t(m__io__raw_s3.get(), this, m__root));
    m__raw_s4 = kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes(20), 46), 46, true);
    m__io__raw_s4 = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_s4));
    m_s4 = std::unique_ptr<bytes_wrapper_t>(new bytes_wrapper_t(m__io__raw_s4.get(), this, m__root));
}

struct_pad_term_equal_t::~struct_pad_term_equal_t() {
    _clean_up();
}

void struct_pad_term_equal_t::_clean_up() {
}

struct_pad_term_equal_t::bytes_wrapper_t::bytes_wrapper_t(kaitai::kstream* p__io, struct_pad_term_equal_t* p__parent, struct_pad_term_equal_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void struct_pad_term_equal_t::bytes_wrapper_t::_read() {
    m_value = m__io->read_bytes_full();
}

struct_pad_term_equal_t::bytes_wrapper_t::~bytes_wrapper_t() {
    _clean_up();
}

void struct_pad_term_equal_t::bytes_wrapper_t::_clean_up() {
}
