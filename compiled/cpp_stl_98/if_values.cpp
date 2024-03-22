// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "if_values.h"

if_values_t::if_values_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, if_values_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_codes = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void if_values_t::_read() {
    m_codes = new std::vector<code_t*>();
    const int l_codes = 3;
    for (int i = 0; i < l_codes; i++) {
        m_codes->push_back(new code_t(m__io, this, m__root));
    }
}

if_values_t::~if_values_t() {
    _clean_up();
}

void if_values_t::_clean_up() {
    if (m_codes) {
        for (std::vector<code_t*>::iterator it = m_codes->begin(); it != m_codes->end(); ++it) {
            delete *it;
        }
        delete m_codes; m_codes = 0;
    }
}

if_values_t::code_t::code_t(kaitai::kstream* p__io, if_values_t* p__parent, if_values_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_half_opcode = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void if_values_t::code_t::_read() {
    m_opcode = m__io->read_u1();
}

if_values_t::code_t::~code_t() {
    _clean_up();
}

void if_values_t::code_t::_clean_up() {
}

int32_t if_values_t::code_t::half_opcode() {
    if (f_half_opcode)
        return m_half_opcode;
    n_half_opcode = true;
    if (kaitai::kstream::mod(opcode(), 2) == 0) {
        n_half_opcode = false;
        m_half_opcode = opcode() / 2;
    }
    f_half_opcode = true;
    return m_half_opcode;
}
