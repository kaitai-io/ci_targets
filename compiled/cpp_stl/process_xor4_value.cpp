// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "process_xor4_value.h"

#include <iostream>
#include <fstream>

process_xor4_value_t::process_xor4_value_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, process_xor4_value_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    m_key = m__io->read_bytes(4);
    m__raw_buf = m__io->read_bytes_full();
    m_buf = kaitai::kstream::process_xor_many(m__raw_buf, key());
}

process_xor4_value_t::~process_xor4_value_t() {
}
