// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "process_xor_value.h"



process_xor_value_t::process_xor_value_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, process_xor_value_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m__io_buf = nullptr;
    _read();
}

void process_xor_value_t::_read() {
    m_key = m__io->read_u1();
    m__raw_buf = m__io->read_bytes_full();
    m_buf = kaitai::kstream::process_xor_one(m__raw_buf, key());
}

process_xor_value_t::~process_xor_value_t() {
}
