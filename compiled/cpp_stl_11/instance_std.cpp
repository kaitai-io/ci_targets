// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "instance_std.h"

instance_std_t::instance_std_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, instance_std_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_header = false;
    _read();
}

void instance_std_t::_read() {
}

instance_std_t::~instance_std_t() {
    _clean_up();
}

void instance_std_t::_clean_up() {
    if (f_header) {
    }
}

std::string instance_std_t::header() {
    if (f_header)
        return m_header;
    std::streampos _pos = m__io->pos();
    m__io->seek(2);
    m_header = kaitai::kstream::bytes_to_str(m__io->read_bytes(5), "ASCII");
    m__io->seek(_pos);
    f_header = true;
    return m_header;
}
