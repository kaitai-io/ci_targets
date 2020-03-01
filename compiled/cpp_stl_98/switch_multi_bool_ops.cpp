// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "switch_multi_bool_ops.h"

switchMultiBoolOps_t::switchMultiBoolOps_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, switchMultiBoolOps_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_opcodes = 0;
    _read();
}

void switchMultiBoolOps_t::_read() {
    m_opcodes = new std::vector<opcode_t*>();
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_opcodes->push_back(new opcode_t(m__io, this, m__root));
            i++;
        }
    }
}

switchMultiBoolOps_t::~switchMultiBoolOps_t() {
    for (std::vector<opcode_t*>::iterator it = m_opcodes->begin(); it != m_opcodes->end(); ++it) {
        delete *it;
    }
    delete m_opcodes;
}

switchMultiBoolOps_t::opcode_t::opcode_t(kaitai::kstream* p__io, switchMultiBoolOps_t* p__parent, switchMultiBoolOps_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void switchMultiBoolOps_t::opcode_t::_read() {
    m_code = m__io->read_u1();
    n_body = true;
    switch ((( ((code() > 0) && (code() <= 8) && (((code() != 10) ? (true) : (false)))) ) ? (code()) : (0))) {
    case 1: {
        n_body = false;
        m_body = m__io->read_u1();
        break;
    }
    case 2: {
        n_body = false;
        m_body = m__io->read_u2le();
        break;
    }
    case 4: {
        n_body = false;
        m_body = m__io->read_u4le();
        break;
    }
    case 8: {
        n_body = false;
        m_body = m__io->read_u8le();
        break;
    }
    }
}

switchMultiBoolOps_t::opcode_t::~opcode_t() {
    if (!n_body) {
    }
}
