// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "recursive_one.h"

recursive_one_t::recursive_one_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, recursive_one_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void recursive_one_t::_read() {
    m_one = m__io->read_u1();
    n_next = true;
    switch (one() & 3) {
    case 0: {
        n_next = false;
        m_next = new recursive_one_t(m__io, this, m__root);
        break;
    }
    case 1: {
        n_next = false;
        m_next = new recursive_one_t(m__io, this, m__root);
        break;
    }
    case 2: {
        n_next = false;
        m_next = new recursive_one_t(m__io, this, m__root);
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
    _clean_up();
}

void recursive_one_t::_clean_up() {
    if (!n_next) {
        if (m_next) {
            delete m_next; m_next = 0;
        }
    }
}

recursive_one_t::fini_t::fini_t(kaitai::kstream* p__io, recursive_one_t* p__parent, recursive_one_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void recursive_one_t::fini_t::_read() {
    m_finisher = m__io->read_u2le();
}

recursive_one_t::fini_t::~fini_t() {
    _clean_up();
}

void recursive_one_t::fini_t::_clean_up() {
}
