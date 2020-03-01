// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "switch_manual_enum_invalid_else.h"

switchManualEnumInvalidElse_t::switchManualEnumInvalidElse_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, switchManualEnumInvalidElse_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_opcodes = 0;
    _read();
}

void switchManualEnumInvalidElse_t::_read() {
    m_opcodes = new std::vector<opcode_t*>();
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_opcodes->push_back(new opcode_t(m__io, this, m__root));
            i++;
        }
    }
}

switchManualEnumInvalidElse_t::~switchManualEnumInvalidElse_t() {
    for (std::vector<opcode_t*>::iterator it = m_opcodes->begin(); it != m_opcodes->end(); ++it) {
        delete *it;
    }
    delete m_opcodes;
}

switchManualEnumInvalidElse_t::opcode_t::opcode_t(kaitai::kstream* p__io, switchManualEnumInvalidElse_t* p__parent, switchManualEnumInvalidElse_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void switchManualEnumInvalidElse_t::opcode_t::_read() {
    m_code = static_cast<switchManualEnumInvalidElse_t::opcode_t::codeEnum_t>(m__io->read_u1());
    switch (code()) {
    case switchManualEnumInvalidElse_t::opcode_t::CODE_ENUM_INTVAL: {
        m_body = new intval_t(m__io, this, m__root);
        break;
    }
    case switchManualEnumInvalidElse_t::opcode_t::CODE_ENUM_STRVAL: {
        m_body = new strval_t(m__io, this, m__root);
        break;
    }
    default: {
        m_body = new defval_t(m__io, this, m__root);
        break;
    }
    }
}

switchManualEnumInvalidElse_t::opcode_t::~opcode_t() {
}

switchManualEnumInvalidElse_t::opcode_t::intval_t::intval_t(kaitai::kstream* p__io, switchManualEnumInvalidElse_t::opcode_t* p__parent, switchManualEnumInvalidElse_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void switchManualEnumInvalidElse_t::opcode_t::intval_t::_read() {
    m_value = m__io->read_u1();
}

switchManualEnumInvalidElse_t::opcode_t::intval_t::~intval_t() {
}

switchManualEnumInvalidElse_t::opcode_t::strval_t::strval_t(kaitai::kstream* p__io, switchManualEnumInvalidElse_t::opcode_t* p__parent, switchManualEnumInvalidElse_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void switchManualEnumInvalidElse_t::opcode_t::strval_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("ASCII"));
}

switchManualEnumInvalidElse_t::opcode_t::strval_t::~strval_t() {
}

switchManualEnumInvalidElse_t::opcode_t::defval_t::defval_t(kaitai::kstream* p__io, switchManualEnumInvalidElse_t::opcode_t* p__parent, switchManualEnumInvalidElse_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_value = false;
    _read();
}

void switchManualEnumInvalidElse_t::opcode_t::defval_t::_read() {
}

switchManualEnumInvalidElse_t::opcode_t::defval_t::~defval_t() {
}

int8_t switchManualEnumInvalidElse_t::opcode_t::defval_t::value() {
    if (f_value)
        return m_value;
    m_value = 123;
    f_value = true;
    return m_value;
}
