// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "term_struct.h"

term_struct_t::term_struct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, term_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_s1 = nullptr;
    m__io__raw_s1 = nullptr;
    m_s2 = nullptr;
    m__io__raw_s2 = nullptr;
    m_s3 = nullptr;
    m__io__raw_s3 = nullptr;
    _read();
}

void term_struct_t::_read() {
    m__raw_s1 = m__io->read_bytes_term(124, false, true, true);
    m__io__raw_s1 = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_s1));
    m_s1 = std::unique_ptr<bytes_wrapper_t>(new bytes_wrapper_t(m__io__raw_s1.get(), this, m__root));
    m__raw_s2 = m__io->read_bytes_term(124, false, false, true);
    m__io__raw_s2 = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_s2));
    m_s2 = std::unique_ptr<bytes_wrapper_t>(new bytes_wrapper_t(m__io__raw_s2.get(), this, m__root));
    m__raw_s3 = m__io->read_bytes_term(64, true, true, true);
    m__io__raw_s3 = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_s3));
    m_s3 = std::unique_ptr<bytes_wrapper_t>(new bytes_wrapper_t(m__io__raw_s3.get(), this, m__root));
}

term_struct_t::~term_struct_t() {
    _clean_up();
}

void term_struct_t::_clean_up() {
}

term_struct_t::bytes_wrapper_t::bytes_wrapper_t(kaitai::kstream* p__io, term_struct_t* p__parent, term_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void term_struct_t::bytes_wrapper_t::_read() {
    m_value = m__io->read_bytes_full();
}

term_struct_t::bytes_wrapper_t::~bytes_wrapper_t() {
    _clean_up();
}

void term_struct_t::bytes_wrapper_t::_clean_up() {
}
