// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "if_instances.h"

if_instances_t::if_instances_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, if_instances_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_never_happens = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void if_instances_t::_read() {
}

if_instances_t::~if_instances_t() {
    _clean_up();
}

void if_instances_t::_clean_up() {
    if (f_never_happens && !n_never_happens) {
    }
}

uint8_t if_instances_t::never_happens() {
    if (f_never_happens)
        return m_never_happens;
    n_never_happens = true;
    if (false) {
        n_never_happens = false;
        std::streampos _pos = m__io->pos();
        m__io->seek(100500);
        m_never_happens = m__io->read_u1();
        m__io->seek(_pos);
        f_never_happens = true;
    }
    return m_never_happens;
}
