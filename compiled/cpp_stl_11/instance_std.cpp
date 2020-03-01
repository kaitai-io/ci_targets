// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "instance_std.h"

instanceStd_t::instanceStd_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, instanceStd_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_header = false;
    _read();
}

void instanceStd_t::_read() {
}

instanceStd_t::~instanceStd_t() {
    if (f_header) {
    }
}

std::string instanceStd_t::header() {
    if (f_header)
        return m_header;
    std::streampos _pos = m__io->pos();
    m__io->seek(2);
    m_header = kaitai::kstream::bytes_to_str(m__io->read_bytes(5), std::string("ASCII"));
    m__io->seek(_pos);
    f_header = true;
    return m_header;
}
