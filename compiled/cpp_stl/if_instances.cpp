// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "if_instances.h"



if_instances_t::if_instances_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, if_instances_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    f_never_happens = false;
    _read();
}

void if_instances_t::_read() {
}

if_instances_t::~if_instances_t() {
    if (f_never_happens && !n_never_happens) {
        // never_happens: Int1Type(false), isArray=false, hasRaw=false, hasIO=false
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
    }
    f_never_happens = true;
    return m_never_happens;
}
