// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "process_xor4_const.h"

process_xor4_const_t::process_xor4_const_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, process_xor4_const_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    _read();
}

void process_xor4_const_t::_read() {
    m_key = m__io->read_bytes(4);
    m__raw_buf = m__io->read_bytes_full();
    m_buf = kaitai::kstream::process_xor_many(m__raw_buf, std::string("\xEC\xBB\xA3\x14", 4));
}

process_xor4_const_t::~process_xor4_const_t() {
    _clean_up();
}

void process_xor4_const_t::_clean_up() {
}
