// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "switch_bytearray.h"



switch_bytearray_t::switch_bytearray_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, switch_bytearray_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    m_opcodes = new std::vector<opcode_t*>();
    while (!m__io->is_eof()) {
        m_opcodes->push_back(new opcode_t(m__io, this, m__root));
    }
}

switch_bytearray_t::~switch_bytearray_t() {
    for (std::vector<opcode_t*>::iterator it = m_opcodes->begin(); it != m_opcodes->end(); ++it) {
        delete *it;
    }
    delete m_opcodes;
}

switch_bytearray_t::opcode_t::opcode_t(kaitai::kstream *p_io, switch_bytearray_t* p_parent, switch_bytearray_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m_code = m__io->read_bytes(1);
    {
        std::string on = code();
        if (on == std::string("\x49", 1)) {
            m_body = new intval_t(m__io, this, m__root);
        }
        else if (on == std::string("\x53", 1)) {
            m_body = new strval_t(m__io, this, m__root);
        }
    }
}

switch_bytearray_t::opcode_t::~opcode_t() {
}

switch_bytearray_t::opcode_t::intval_t::intval_t(kaitai::kstream *p_io, switch_bytearray_t::opcode_t* p_parent, switch_bytearray_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m_value = m__io->read_u1();
}

switch_bytearray_t::opcode_t::intval_t::~intval_t() {
}

switch_bytearray_t::opcode_t::strval_t::strval_t(kaitai::kstream *p_io, switch_bytearray_t::opcode_t* p_parent, switch_bytearray_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m_value = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("ASCII"));
}

switch_bytearray_t::opcode_t::strval_t::~strval_t() {
}
