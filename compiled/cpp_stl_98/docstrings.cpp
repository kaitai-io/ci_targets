// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "docstrings.h"

docstrings_t::docstrings_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, docstrings_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_three = false;
    f_two = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void docstrings_t::_read() {
    m_one = m__io->read_u1();
}

docstrings_t::~docstrings_t() {
    _clean_up();
}

void docstrings_t::_clean_up() {
    if (f_two) {
    }
}

docstrings_t::complex_subtype_t::complex_subtype_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, docstrings_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void docstrings_t::complex_subtype_t::_read() {
}

docstrings_t::complex_subtype_t::~complex_subtype_t() {
    _clean_up();
}

void docstrings_t::complex_subtype_t::_clean_up() {
}

int8_t docstrings_t::three() {
    if (f_three)
        return m_three;
    f_three = true;
    m_three = 66;
    return m_three;
}

uint8_t docstrings_t::two() {
    if (f_two)
        return m_two;
    f_two = true;
    std::streampos _pos = m__io->pos();
    m__io->seek(0);
    m_two = m__io->read_u1();
    m__io->seek(_pos);
    return m_two;
}
