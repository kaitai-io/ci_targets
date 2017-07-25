// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "recursive_one.h"



recursive_one_t::recursive_one_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, recursive_one_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void recursive_one_t::_read() {
    m_one = m__io->read_u1();
    n_next = true;
    switch ((one() & 3)) {
    case 0: {
        n_next = false;
        m_next = new recursive_one_t(m__io);
        break;
    }
    case 1: {
        n_next = false;
        m_next = new recursive_one_t(m__io);
        break;
    }
    case 2: {
        n_next = false;
        m_next = new recursive_one_t(m__io);
        break;
    }
    case 3: {
        n_next = false;
        m_next = new fini_t(m__io, this, m__root);
        break;
    }
    }
}

recursive_one_t::~recursive_one_t() {
    // one: Int1Type(false), isArray=false, hasRaw=false, hasIO=false
    if (!n_next) {
        // next: KaitaiStructType, isArray=false, hasRaw=false, hasIO=false
        delete m_next;
    }
}

recursive_one_t::fini_t::fini_t(kaitai::kstream *p_io, recursive_one_t* p_parent, recursive_one_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void recursive_one_t::fini_t::_read() {
    m_finisher = m__io->read_u2le();
}

recursive_one_t::fini_t::~fini_t() {
    // finisher: IntMultiType(false,Width2,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
}
