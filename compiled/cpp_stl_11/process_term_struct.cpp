// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "process_term_struct.h"
#include "my_custom_fx.h"

process_term_struct_t::process_term_struct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, process_term_struct_t* p__root) : kaitai::kstruct(p__io) {
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

void process_term_struct_t::_read() {
    m__raw__raw_s1 = m__io->read_bytes_term(124, false, true, true);
    my_custom_fx_t _process__raw__raw_s1(32, false, std::string("\x00", 1));
    m__raw_s1 = _process__raw__raw_s1.decode(m__raw__raw_s1);
    m__io__raw_s1 = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_s1));
    m_s1 = std::unique_ptr<bytes_wrapper_t>(new bytes_wrapper_t(m__io__raw_s1.get(), this, m__root));
    m__raw__raw_s2 = m__io->read_bytes_term(124, false, false, true);
    my_custom_fx_t _process__raw__raw_s2(32, false, std::string("\x00", 1));
    m__raw_s2 = _process__raw__raw_s2.decode(m__raw__raw_s2);
    m__io__raw_s2 = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_s2));
    m_s2 = std::unique_ptr<bytes_wrapper_t>(new bytes_wrapper_t(m__io__raw_s2.get(), this, m__root));
    m__raw__raw_s3 = m__io->read_bytes_term(64, true, true, true);
    my_custom_fx_t _process__raw__raw_s3(32, false, std::string("\x00", 1));
    m__raw_s3 = _process__raw__raw_s3.decode(m__raw__raw_s3);
    m__io__raw_s3 = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_s3));
    m_s3 = std::unique_ptr<bytes_wrapper_t>(new bytes_wrapper_t(m__io__raw_s3.get(), this, m__root));
}

process_term_struct_t::~process_term_struct_t() {
    _clean_up();
}

void process_term_struct_t::_clean_up() {
}

process_term_struct_t::bytes_wrapper_t::bytes_wrapper_t(kaitai::kstream* p__io, process_term_struct_t* p__parent, process_term_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void process_term_struct_t::bytes_wrapper_t::_read() {
    m_value = m__io->read_bytes_full();
}

process_term_struct_t::bytes_wrapper_t::~bytes_wrapper_t() {
    _clean_up();
}

void process_term_struct_t::bytes_wrapper_t::_clean_up() {
}
