// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "recursive_one.h"

recursiveOne_t::recursiveOne_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, recursiveOne_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void recursiveOne_t::_read() {
    m_one = m__io->read_u1();
    n_next = true;
    switch ((one() & 3)) {
    case 0: {
        n_next = false;
        m_next = std::unique_ptr<recursiveOne_t>(new recursiveOne_t(m__io));
        break;
    }
    case 1: {
        n_next = false;
        m_next = std::unique_ptr<recursiveOne_t>(new recursiveOne_t(m__io));
        break;
    }
    case 2: {
        n_next = false;
        m_next = std::unique_ptr<recursiveOne_t>(new recursiveOne_t(m__io));
        break;
    }
    case 3: {
        n_next = false;
        m_next = std::unique_ptr<fini_t>(new fini_t(m__io, this, m__root));
        break;
    }
    }
}

recursiveOne_t::~recursiveOne_t() {
    if (!n_next) {
    }
}

recursiveOne_t::fini_t::fini_t(kaitai::kstream* p__io, recursiveOne_t* p__parent, recursiveOne_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void recursiveOne_t::fini_t::_read() {
    m_finisher = m__io->read_u2le();
}

recursiveOne_t::fini_t::~fini_t() {
}
