// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "switch_manual_enum.h"

switchManualEnum_t::switchManualEnum_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, switchManualEnum_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_opcodes = 0;
    _read();
}

void switchManualEnum_t::_read() {
    m_opcodes = new std::vector<opcode_t*>();
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_opcodes->push_back(new opcode_t(m__io, this, m__root));
            i++;
        }
    }
}

switchManualEnum_t::~switchManualEnum_t() {
    for (std::vector<opcode_t*>::iterator it = m_opcodes->begin(); it != m_opcodes->end(); ++it) {
        delete *it;
    }
    delete m_opcodes;
}

switchManualEnum_t::opcode_t::opcode_t(kaitai::kstream* p__io, switchManualEnum_t* p__parent, switchManualEnum_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void switchManualEnum_t::opcode_t::_read() {
    m_code = static_cast<switchManualEnum_t::opcode_t::codeEnum_t>(m__io->read_u1());
    n_body = true;
    switch (code()) {
    case switchManualEnum_t::opcode_t::CODE_ENUM_INTVAL: {
        n_body = false;
        m_body = new intval_t(m__io, this, m__root);
        break;
    }
    case switchManualEnum_t::opcode_t::CODE_ENUM_STRVAL: {
        n_body = false;
        m_body = new strval_t(m__io, this, m__root);
        break;
    }
    }
}

switchManualEnum_t::opcode_t::~opcode_t() {
    if (!n_body) {
        delete m_body;
    }
}

switchManualEnum_t::opcode_t::intval_t::intval_t(kaitai::kstream* p__io, switchManualEnum_t::opcode_t* p__parent, switchManualEnum_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void switchManualEnum_t::opcode_t::intval_t::_read() {
    m_value = m__io->read_u1();
}

switchManualEnum_t::opcode_t::intval_t::~intval_t() {
}

switchManualEnum_t::opcode_t::strval_t::strval_t(kaitai::kstream* p__io, switchManualEnum_t::opcode_t* p__parent, switchManualEnum_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void switchManualEnum_t::opcode_t::strval_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("ASCII"));
}

switchManualEnum_t::opcode_t::strval_t::~strval_t() {
}
