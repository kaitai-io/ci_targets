// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "non_standard.h"

#include <iostream>
#include <fstream>

non_standard_t::non_standard_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, non_standard_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    f_vi = false;
    f_pi = false;
    m_foo = m__io->read_u1();
    switch (foo()) {
    case 42:
        m_bar = m__io->read_u2le();
        break;
    case 43:
        m_bar = m__io->read_u4le();
        break;
    }
}

non_standard_t::~non_standard_t() {
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
