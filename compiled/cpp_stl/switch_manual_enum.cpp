// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "switch_manual_enum.h"



switch_manual_enum_t::switch_manual_enum_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, switch_manual_enum_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void switch_manual_enum_t::_read() {
    m_opcodes = new std::vector<opcode_t*>();
    while (!m__io->is_eof()) {
        m_opcodes->push_back(new opcode_t(m__io, this, m__root));
    }
}

switch_manual_enum_t::~switch_manual_enum_t() {
    for (std::vector<opcode_t*>::iterator it = m_opcodes->begin(); it != m_opcodes->end(); ++it) {
        delete *it;
    }
    delete m_opcodes;
}

switch_manual_enum_t::opcode_t::opcode_t(kaitai::kstream *p_io, switch_manual_enum_t* p_parent, switch_manual_enum_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void switch_manual_enum_t::opcode_t::_read() {
    m_code = static_cast<switch_manual_enum_t::opcode_t::code_enum_t>(m__io->read_u1());
    n_body = true;
    switch (code()) {
    case CODE_ENUM_INTVAL: {
        n_body = false;
        m_body = new intval_t(m__io, this, m__root);
        break;
    }
    case CODE_ENUM_STRVAL: {
        n_body = false;
        m_body = new strval_t(m__io, this, m__root);
        break;
    }
    }
}

switch_manual_enum_t::opcode_t::~opcode_t() {
    if (!n_body) {
        delete m_body;
    }
}

switch_manual_enum_t::opcode_t::intval_t::intval_t(kaitai::kstream *p_io, switch_manual_enum_t::opcode_t* p_parent, switch_manual_enum_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void switch_manual_enum_t::opcode_t::intval_t::_read() {
    m_value = m__io->read_u1();
}

switch_manual_enum_t::opcode_t::intval_t::~intval_t() {
}

switch_manual_enum_t::opcode_t::strval_t::strval_t(kaitai::kstream *p_io, switch_manual_enum_t::opcode_t* p_parent, switch_manual_enum_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void switch_manual_enum_t::opcode_t::strval_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("ASCII"));
}

switch_manual_enum_t::opcode_t::strval_t::~strval_t() {
}
