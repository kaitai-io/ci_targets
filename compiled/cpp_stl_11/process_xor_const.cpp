// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "process_xor_const.h"

processXorConst_t::processXorConst_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, processXorConst_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m__io_buf = nullptr;
    _read();
}

void processXorConst_t::_read() {
    m_key = m__io->read_u1();
    m__raw_buf = m__io->read_bytes_full();
    m_buf = kaitai::kstream::process_xor_one(m__raw_buf, 255);
}

processXorConst_t::~processXorConst_t() {
}
