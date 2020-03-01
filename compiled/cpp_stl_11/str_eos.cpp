// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "str_eos.h"

strEos_t::strEos_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, strEos_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void strEos_t::_read() {
    m_str = kaitai::kstream::bytes_to_str(m__io->read_bytes_full(), std::string("UTF-8"));
}

strEos_t::~strEos_t() {
}
