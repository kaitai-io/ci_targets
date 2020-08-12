// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "if_values.h"

if_values_t::if_values_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, if_values_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_codes = nullptr;
    _read();
}

void if_values_t::_read() {
    int l_codes = 3;
    m_codes = std::unique_ptr<std::vector<std::unique_ptr<code_t>>>(new std::vector<std::unique_ptr<code_t>>());
    m_codes->reserve(l_codes);
    for (int i = 0; i < l_codes; i++) {
        m_codes->push_back(std::move(std::unique_ptr<code_t>(new code_t(m__io, this, m__root))));
    }
}

if_values_t::~if_values_t() {
    _clean_up();
}

void if_values_t::_clean_up() {
}

if_values_t::code_t::code_t(kaitai::kstream* p__io, if_values_t* p__parent, if_values_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_half_opcode = false;
    _read();
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
        m_half_opcode = (opcode() / 2);
    }
    f_half_opcode = true;
    return m_half_opcode;
}
