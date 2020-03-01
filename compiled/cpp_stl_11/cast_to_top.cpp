// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "cast_to_top.h"

castToTop_t::castToTop_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, castToTop_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_header = nullptr;
    f_header = false;
    f_header_casted = false;
    _read();
}

void castToTop_t::_read() {
    m_code = m__io->read_u1();
}

castToTop_t::~castToTop_t() {
    if (f_header) {
    }
}

castToTop_t* castToTop_t::header() {
    if (f_header)
        return m_header.get();
    std::streampos _pos = m__io->pos();
    m__io->seek(1);
    m_header = std::unique_ptr<castToTop_t>(new castToTop_t(m__io));
    m__io->seek(_pos);
    f_header = true;
    return m_header.get();
}

castToTop_t* castToTop_t::header_casted() {
    if (f_header_casted)
        return m_header_casted;
    m_header_casted = static_cast<castToTop_t*>(header());
    f_header_casted = true;
    return m_header_casted;
}
