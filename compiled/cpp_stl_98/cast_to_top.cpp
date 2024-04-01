// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "cast_to_top.h"

cast_to_top_t::cast_to_top_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, cast_to_top_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_header = 0;
    f_header = false;
    f_header_casted = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void cast_to_top_t::_read() {
    m_code = m__io->read_u1();
}

cast_to_top_t::~cast_to_top_t() {
    _clean_up();
}

void cast_to_top_t::_clean_up() {
    if (f_header) {
        if (m_header) {
            delete m_header; m_header = 0;
        }
    }
}

cast_to_top_t* cast_to_top_t::header() {
    if (f_header)
        return m_header;
    std::streampos _pos = m__io->pos();
    m__io->seek(1);
    m_header = new cast_to_top_t(m__io, this, m__root);
    m__io->seek(_pos);
    f_header = true;
    return m_header;
}

cast_to_top_t* cast_to_top_t::header_casted() {
    if (f_header_casted)
        return m_header_casted;
    m_header_casted = static_cast<cast_to_top_t*>(header());
    f_header_casted = true;
    return m_header_casted;
}
