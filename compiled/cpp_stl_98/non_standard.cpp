// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "non_standard.h"

non_standard_t::non_standard_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, non_standard_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_vi = false;
    f_pi = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void non_standard_t::_read() {
    m_foo = m__io->read_u1();
    n_bar = true;
    switch (foo()) {
    case 42: {
        n_bar = false;
        m_bar = m__io->read_u2le();
        break;
    }
    case 43: {
        n_bar = false;
        m_bar = m__io->read_u4le();
        break;
    }
    }
}

non_standard_t::~non_standard_t() {
    _clean_up();
}

void non_standard_t::_clean_up() {
    if (!n_bar) {
    }
    if (f_pi) {
    }
}

uint8_t non_standard_t::vi() {
    if (f_vi)
        return m_vi;
    m_vi = foo();
    f_vi = true;
    return m_vi;
}

uint8_t non_standard_t::pi() {
    if (f_pi)
        return m_pi;
    std::streampos _pos = m__io->pos();
    m__io->seek(0);
    m_pi = m__io->read_u1();
    m__io->seek(_pos);
    f_pi = true;
    return m_pi;
}
