// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "docstrings.h"



docstrings_t::docstrings_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, docstrings_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    f_two = false;
    f_three = false;
    m_one = m__io->read_u1();
}

docstrings_t::~docstrings_t() {
}

docstrings_t::complex_subtype_t::complex_subtype_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, docstrings_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
}

docstrings_t::complex_subtype_t::~complex_subtype_t() {
}

uint8_t docstrings_t::two() {
    if (f_two)
        return m_two;
    std::streampos _pos = m__io->pos();
    m__io->seek(0);
    m_two = m__io->read_u1();
    m__io->seek(_pos);
    f_two = true;
    return m_two;
}

int8_t docstrings_t::three() {
    if (f_three)
        return m_three;
    m_three = 66;
    f_three = true;
    return m_three;
}
