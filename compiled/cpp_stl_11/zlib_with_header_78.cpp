// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "zlib_with_header_78.h"

zlib_with_header_78_t::zlib_with_header_78_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, zlib_with_header_78_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m__io_data = nullptr;
    _read();
}

void zlib_with_header_78_t::_read() {
    m__raw_data = m__io->read_bytes_full();
    m_data = kaitai::kstream::process_zlib(m__raw_data);
}

zlib_with_header_78_t::~zlib_with_header_78_t() {
    _clean_up();
}

void zlib_with_header_78_t::_clean_up() {
}
