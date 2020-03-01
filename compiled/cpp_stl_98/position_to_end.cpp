// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "position_to_end.h"

positionToEnd_t::positionToEnd_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, positionToEnd_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_index = 0;
    f_index = false;
    _read();
}

void positionToEnd_t::_read() {
}

positionToEnd_t::~positionToEnd_t() {
    if (f_index) {
        delete m_index;
    }
}

positionToEnd_t::indexObj_t::indexObj_t(kaitai::kstream* p__io, positionToEnd_t* p__parent, positionToEnd_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void positionToEnd_t::indexObj_t::_read() {
    m_foo = m__io->read_u4le();
    m_bar = m__io->read_u4le();
}

positionToEnd_t::indexObj_t::~indexObj_t() {
}

positionToEnd_t::indexObj_t* positionToEnd_t::index() {
    if (f_index)
        return m_index;
    std::streampos _pos = m__io->pos();
    m__io->seek((_io()->size() - 8));
    m_index = new indexObj_t(m__io, this, m__root);
    m__io->seek(_pos);
    f_index = true;
    return m_index;
}
