// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "position_abs.h"

positionAbs_t::positionAbs_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, positionAbs_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_index = 0;
    f_index = false;
    _read();
}

void positionAbs_t::_read() {
    m_index_offset = m__io->read_u4le();
}

positionAbs_t::~positionAbs_t() {
    if (f_index) {
        delete m_index;
    }
}

positionAbs_t::indexObj_t::indexObj_t(kaitai::kstream* p__io, positionAbs_t* p__parent, positionAbs_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void positionAbs_t::indexObj_t::_read() {
    m_entry = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("UTF-8"));
}

positionAbs_t::indexObj_t::~indexObj_t() {
}

positionAbs_t::indexObj_t* positionAbs_t::index() {
    if (f_index)
        return m_index;
    std::streampos _pos = m__io->pos();
    m__io->seek(index_offset());
    m_index = new indexObj_t(m__io, this, m__root);
    m__io->seek(_pos);
    f_index = true;
    return m_index;
}
