// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "instance_std.h"



instance_std_t::instance_std_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, instance_std_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    f_header = false;
    _read();
}

void instance_std_t::_read() {
}

instance_std_t::~instance_std_t() {
    if (f_header) {
        // header: StrFromBytesType(BytesLimitType(IntNum(5),None,false,None,None),ASCII), isArray=false, hasRaw=false, hasIO=false
    }
}

std::string instance_std_t::header() {
    if (f_header)
        return m_header;
    std::streampos _pos = m__io->pos();
    m__io->seek(2);
    m_header = kaitai::kstream::bytes_to_str(m__io->read_bytes(5), std::string("ASCII"));
    m__io->seek(_pos);
    f_header = true;
    return m_header;
}
