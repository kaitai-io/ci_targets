// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "switch_multi_bool_ops.h"

switch_multi_bool_ops_t::switch_multi_bool_ops_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, switch_multi_bool_ops_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_opcodes = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void switch_multi_bool_ops_t::_read() {
    m_opcodes = new std::vector<opcode_t*>();
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_opcodes->push_back(new opcode_t(m__io, this, m__root));
            i++;
        }
    }
}

switch_multi_bool_ops_t::~switch_multi_bool_ops_t() {
    _clean_up();
}

void switch_multi_bool_ops_t::_clean_up() {
    if (m_opcodes) {
        for (std::vector<opcode_t*>::iterator it = m_opcodes->begin(); it != m_opcodes->end(); ++it) {
            delete *it;
        }
        delete m_opcodes; m_opcodes = 0;
    }
}

switch_multi_bool_ops_t::opcode_t::opcode_t(kaitai::kstream* p__io, switch_multi_bool_ops_t* p__parent, switch_multi_bool_ops_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void switch_multi_bool_ops_t::opcode_t::_read() {
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

switch_multi_bool_ops_t::opcode_t::~opcode_t() {
    _clean_up();
}

void switch_multi_bool_ops_t::opcode_t::_clean_up() {
    if (!n_body) {
    }
}
