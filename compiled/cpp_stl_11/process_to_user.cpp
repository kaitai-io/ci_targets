// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "process_to_user.h"

process_to_user_t::process_to_user_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, process_to_user_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_buf1 = nullptr;
    m__io__raw_buf1 = nullptr;
    _read();
}

void process_to_user_t::_read() {
    m__raw__raw_buf1 = m__io->read_bytes(5);
    m__raw_buf1 = kaitai::kstream::process_rotate_left(m__raw__raw_buf1, 3);
    m__io__raw_buf1 = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_buf1));
    m_buf1 = std::unique_ptr<just_str_t>(new just_str_t(m__io__raw_buf1.get(), this, m__root));
}

process_to_user_t::~process_to_user_t() {
    _clean_up();
}

void process_to_user_t::_clean_up() {
}

process_to_user_t::just_str_t::just_str_t(kaitai::kstream* p__io, process_to_user_t* p__parent, process_to_user_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void process_to_user_t::just_str_t::_read() {
    m_str = kaitai::kstream::bytes_to_str(m__io->read_bytes_full(), "UTF-8");
}

process_to_user_t::just_str_t::~just_str_t() {
    _clean_up();
}

void process_to_user_t::just_str_t::_clean_up() {
}
