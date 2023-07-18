// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "switch_manual_str.h"

switch_manual_str_t::switch_manual_str_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, switch_manual_str_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_opcodes = nullptr;
    _read();
}

void switch_manual_str_t::_read() {
    m_opcodes = std::unique_ptr<std::vector<std::unique_ptr<opcode_t>>>(new std::vector<std::unique_ptr<opcode_t>>());
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_opcodes->push_back(std::move(std::unique_ptr<opcode_t>(new opcode_t(m__io, this, m__root))));
            i++;
        }
    }
}

switch_manual_str_t::~switch_manual_str_t() {
    _clean_up();
}

void switch_manual_str_t::_clean_up() {
}

switch_manual_str_t::opcode_t::opcode_t(kaitai::kstream* p__io, switch_manual_str_t* p__parent, switch_manual_str_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void switch_manual_str_t::opcode_t::_read() {
    m_code = kaitai::kstream::bytes_to_str(m__io->read_bytes(1), "ASCII");
    n_body = true;
    {
        std::string on = code();
        if (on == std::string("I")) {
            n_body = false;
            m_body = std::unique_ptr<intval_t>(new intval_t(m__io, this, m__root));
        }
        else if (on == std::string("S")) {
            n_body = false;
            m_body = std::unique_ptr<strval_t>(new strval_t(m__io, this, m__root));
        }
    }
}

switch_manual_str_t::opcode_t::~opcode_t() {
    _clean_up();
}

void switch_manual_str_t::opcode_t::_clean_up() {
    if (!n_body) {
    }
}

switch_manual_str_t::opcode_t::intval_t::intval_t(kaitai::kstream* p__io, switch_manual_str_t::opcode_t* p__parent, switch_manual_str_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void switch_manual_str_t::opcode_t::intval_t::_read() {
    m_value = m__io->read_u1();
}

switch_manual_str_t::opcode_t::intval_t::~intval_t() {
    _clean_up();
}

void switch_manual_str_t::opcode_t::intval_t::_clean_up() {
}

switch_manual_str_t::opcode_t::strval_t::strval_t(kaitai::kstream* p__io, switch_manual_str_t::opcode_t* p__parent, switch_manual_str_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void switch_manual_str_t::opcode_t::strval_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), "ASCII");
}

switch_manual_str_t::opcode_t::strval_t::~strval_t() {
    _clean_up();
}

void switch_manual_str_t::opcode_t::strval_t::_clean_up() {
}
