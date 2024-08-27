// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "cast_to_top.h"

cast_to_top_t::cast_to_top_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, cast_to_top_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_header = nullptr;
    f_header = false;
    f_header_casted = false;
    _read();
}

void cast_to_top_t::_read() {
    m_code = m__io->read_u1();
}

cast_to_top_t::~cast_to_top_t() {
    _clean_up();
}

void cast_to_top_t::_clean_up() {
    if (f_header) {
    }
}

cast_to_top_t* cast_to_top_t::header() {
    if (f_header)
        return m_header.get();
    f_header = true;
    std::streampos _pos = m__io->pos();
    m__io->seek(1);
    m_header = std::unique_ptr<cast_to_top_t>(new cast_to_top_t(m__io, this, m__root));
    m__io->seek(_pos);
    return m_header.get();
}

cast_to_top_t* cast_to_top_t::header_casted() {
    if (f_header_casted)
        return m_header_casted;
    f_header_casted = true;
    m_header_casted = static_cast<cast_to_top_t*>(header());
    return m_header_casted;
}
