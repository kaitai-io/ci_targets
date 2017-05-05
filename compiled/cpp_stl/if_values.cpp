// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "if_values.h"



if_values_t::if_values_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, if_values_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    int l_codes = 3;
    m_codes = new std::vector<code_t*>();
    m_codes->reserve(l_codes);
    for (int i = 0; i < l_codes; i++) {
        m_codes->push_back(new code_t(m__io, this, m__root));
    }
}

if_values_t::~if_values_t() {
    for (std::vector<code_t*>::iterator it = m_codes->begin(); it != m_codes->end(); ++it) {
        delete *it;
    }
    delete m_codes;
}

if_values_t::code_t::code_t(kaitai::kstream *p_io, if_values_t* p_parent, if_values_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    f_half_opcode = false;
    m_opcode = m__io->read_u1();
}

if_values_t::code_t::~code_t() {
}

int32_t if_values_t::code_t::half_opcode() {
    if (f_half_opcode)
        return m_half_opcode;
    n_half_opcode = true;
    if (kaitai::kstream::mod(opcode(), 2) == 0) {
        n_half_opcode = false;
        m_half_opcode = (opcode() / 2);
    }
    f_half_opcode = true;
    return m_half_opcode;
}
