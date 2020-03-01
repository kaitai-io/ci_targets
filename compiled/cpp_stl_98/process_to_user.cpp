// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "process_to_user.h"

processToUser_t::processToUser_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, processToUser_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_buf1 = 0;
    m__io__raw_buf1 = 0;
    _read();
}

void processToUser_t::_read() {
    m__raw__raw_buf1 = m__io->read_bytes(5);
    m__raw_buf1 = kaitai::kstream::process_rotate_left(m__raw__raw_buf1, 3);
    m__io__raw_buf1 = new kaitai::kstream(m__raw_buf1);
    m_buf1 = new justStr_t(m__io__raw_buf1, this, m__root);
}

processToUser_t::~processToUser_t() {
    delete m__io__raw_buf1;
    delete m_buf1;
}

processToUser_t::justStr_t::justStr_t(kaitai::kstream* p__io, processToUser_t* p__parent, processToUser_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void processToUser_t::justStr_t::_read() {
    m_str = kaitai::kstream::bytes_to_str(m__io->read_bytes_full(), std::string("UTF-8"));
}

processToUser_t::justStr_t::~justStr_t() {
}
