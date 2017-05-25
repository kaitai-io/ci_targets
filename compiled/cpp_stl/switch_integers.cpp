// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "switch_integers.h"



switch_integers_t::switch_integers_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, switch_integers_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void switch_integers_t::_read() {
    m_opcodes = new std::vector<opcode_t*>();
    while (!m__io->is_eof()) {
        m_opcodes->push_back(new opcode_t(m__io, this, m__root));
    }
}

switch_integers_t::~switch_integers_t() {
    for (std::vector<opcode_t*>::iterator it = m_opcodes->begin(); it != m_opcodes->end(); ++it) {
        delete *it;
    }
    delete m_opcodes;
}

switch_integers_t::opcode_t::opcode_t(kaitai::kstream *p_io, switch_integers_t* p_parent, switch_integers_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void switch_integers_t::opcode_t::_read() {
    m_code = m__io->read_u1();
    switch (code()) {
    case 1:
        m_body = m__io->read_u1();
        break;
    case 2:
        m_body = m__io->read_u2le();
        break;
    case 4:
        m_body = m__io->read_u4le();
        break;
    case 8:
        m_body = m__io->read_u8le();
        break;
    }
}

switch_integers_t::opcode_t::~opcode_t() {
}
