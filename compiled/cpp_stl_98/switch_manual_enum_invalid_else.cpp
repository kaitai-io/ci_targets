// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "switch_manual_enum_invalid_else.h"

switch_manual_enum_invalid_else_t::switch_manual_enum_invalid_else_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, switch_manual_enum_invalid_else_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_opcodes = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void switch_manual_enum_invalid_else_t::_read() {
    m_opcodes = new std::vector<opcode_t*>();
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_opcodes->push_back(new opcode_t(m__io, this, m__root));
            i++;
        }
    }
}

switch_manual_enum_invalid_else_t::~switch_manual_enum_invalid_else_t() {
    _clean_up();
}

void switch_manual_enum_invalid_else_t::_clean_up() {
    if (m_opcodes) {
        for (std::vector<opcode_t*>::iterator it = m_opcodes->begin(); it != m_opcodes->end(); ++it) {
            delete *it;
        }
        delete m_opcodes; m_opcodes = 0;
    }
}

switch_manual_enum_invalid_else_t::opcode_t::opcode_t(kaitai::kstream* p__io, switch_manual_enum_invalid_else_t* p__parent, switch_manual_enum_invalid_else_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void switch_manual_enum_invalid_else_t::opcode_t::_read() {
    m_code = static_cast<switch_manual_enum_invalid_else_t::opcode_t::code_enum_t>(m__io->read_u1());
    switch (code()) {
    case switch_manual_enum_invalid_else_t::opcode_t::CODE_ENUM_INTVAL: {
        m_body = new intval_t(m__io, this, m__root);
        break;
    }
    case switch_manual_enum_invalid_else_t::opcode_t::CODE_ENUM_STRVAL: {
        m_body = new strval_t(m__io, this, m__root);
        break;
    }
    default: {
        m_body = new defval_t(m__io, this, m__root);
        break;
    }
    }
}

switch_manual_enum_invalid_else_t::opcode_t::~opcode_t() {
    _clean_up();
}

void switch_manual_enum_invalid_else_t::opcode_t::_clean_up() {
    if (m_body) {
        delete m_body; m_body = 0;
    }
}

switch_manual_enum_invalid_else_t::opcode_t::defval_t::defval_t(kaitai::kstream* p__io, switch_manual_enum_invalid_else_t::opcode_t* p__parent, switch_manual_enum_invalid_else_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_value = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void switch_manual_enum_invalid_else_t::opcode_t::defval_t::_read() {
}

switch_manual_enum_invalid_else_t::opcode_t::defval_t::~defval_t() {
    _clean_up();
}

void switch_manual_enum_invalid_else_t::opcode_t::defval_t::_clean_up() {
}

int8_t switch_manual_enum_invalid_else_t::opcode_t::defval_t::value() {
    if (f_value)
        return m_value;
    m_value = 123;
    f_value = true;
    return m_value;
}

switch_manual_enum_invalid_else_t::opcode_t::intval_t::intval_t(kaitai::kstream* p__io, switch_manual_enum_invalid_else_t::opcode_t* p__parent, switch_manual_enum_invalid_else_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void switch_manual_enum_invalid_else_t::opcode_t::intval_t::_read() {
    m_value = m__io->read_u1();
}

switch_manual_enum_invalid_else_t::opcode_t::intval_t::~intval_t() {
    _clean_up();
}

void switch_manual_enum_invalid_else_t::opcode_t::intval_t::_clean_up() {
}

switch_manual_enum_invalid_else_t::opcode_t::strval_t::strval_t(kaitai::kstream* p__io, switch_manual_enum_invalid_else_t::opcode_t* p__parent, switch_manual_enum_invalid_else_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void switch_manual_enum_invalid_else_t::opcode_t::strval_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), "ASCII");
}

switch_manual_enum_invalid_else_t::opcode_t::strval_t::~strval_t() {
    _clean_up();
}

void switch_manual_enum_invalid_else_t::opcode_t::strval_t::_clean_up() {
}
