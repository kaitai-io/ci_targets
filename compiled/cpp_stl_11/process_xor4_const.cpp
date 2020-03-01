// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "process_xor4_const.h"

processXor4Const_t::processXor4Const_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, processXor4Const_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m__io_buf = nullptr;
    _read();
}

void processXor4Const_t::_read() {
    m_key = m__io->read_bytes(4);
    m__raw_buf = m__io->read_bytes_full();
    m_buf = kaitai::kstream::process_xor_many(m__raw_buf, std::string("\xEC\xBB\xA3\x14", 4));
}

processXor4Const_t::~processXor4Const_t() {
}
