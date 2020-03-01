// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "zlib_with_header_78.h"

zlibWithHeader78_t::zlibWithHeader78_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, zlibWithHeader78_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m__io_data = 0;
    _read();
}

void zlibWithHeader78_t::_read() {
    m__raw_data = m__io->read_bytes_full();
    m_data = kaitai::kstream::process_zlib(m__raw_data);
}

zlibWithHeader78_t::~zlibWithHeader78_t() {
}
