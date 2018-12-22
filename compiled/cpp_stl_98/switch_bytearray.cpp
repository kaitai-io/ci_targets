// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "switch_bytearray.h"



switch_bytearray_t::switch_bytearray_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, switch_bytearray_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_opcodes = 0;
    _read();
}

void switch_bytearray_t::_read() {
    m_opcodes = new std::vector<opcode_t*>();
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_opcodes->push_back(new opcode_t(m__io, this, m__root));
            i++;
        }
    }
}

switch_bytearray_t::~switch_bytearray_t() {
    for (std::vector<opcode_t*>::iterator it = m_opcodes->begin(); it != m_opcodes->end(); ++it) {
        delete *it;
    }
    delete m_opcodes;
}

switch_bytearray_t::opcode_t::opcode_t(kaitai::kstream* p__io, switch_bytearray_t* p__parent, switch_bytearray_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void switch_bytearray_t::opcode_t::_read() {
    m_code = m__io->read_bytes(1);
    n_body = true;
    {
        std::string on = code();
        if (on == std::string("\x49", 1)) {
            n_body = false;
            m_body = new intval_t(m__io, this, m__root);
        }
        else if (on == std::string("\x53", 1)) {
            n_body = false;
            m_body = new strval_t(m__io, this, m__root);
        }
    }
}

switch_bytearray_t::opcode_t::~opcode_t() {
    if (!n_body) {
        delete m_body;
    }
}

switch_bytearray_t::opcode_t::intval_t::intval_t(kaitai::kstream* p__io, switch_bytearray_t::opcode_t* p__parent, switch_bytearray_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void switch_bytearray_t::opcode_t::intval_t::_read() {
    m_value = m__io->read_u1();
}

switch_bytearray_t::opcode_t::intval_t::~intval_t() {
}

switch_bytearray_t::opcode_t::strval_t::strval_t(kaitai::kstream* p__io, switch_bytearray_t::opcode_t* p__parent, switch_bytearray_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void switch_bytearray_t::opcode_t::strval_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("ASCII"));
}

switch_bytearray_t::opcode_t::strval_t::~strval_t() {
}
