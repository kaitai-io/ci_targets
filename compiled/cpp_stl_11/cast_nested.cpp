// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "cast_nested.h"

castNested_t::castNested_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, castNested_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_opcodes = nullptr;
    f_opcodes_0_str = false;
    f_opcodes_0_str_value = false;
    f_opcodes_1_int = false;
    f_opcodes_1_int_value = false;
    _read();
}

void castNested_t::_read() {
    m_opcodes = std::unique_ptr<std::vector<std::unique_ptr<opcode_t>>>(new std::vector<std::unique_ptr<opcode_t>>());
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_opcodes->push_back(std::move(std::unique_ptr<opcode_t>(new opcode_t(m__io, this, m__root))));
            i++;
        }
    }
}

castNested_t::~castNested_t() {
}

castNested_t::opcode_t::opcode_t(kaitai::kstream* p__io, castNested_t* p__parent, castNested_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void castNested_t::opcode_t::_read() {
    m_code = m__io->read_u1();
    n_body = true;
    switch (code()) {
    case 73: {
        n_body = false;
        m_body = std::unique_ptr<intval_t>(new intval_t(m__io, this, m__root));
        break;
    }
    case 83: {
        n_body = false;
        m_body = std::unique_ptr<strval_t>(new strval_t(m__io, this, m__root));
        break;
    }
    }
}

castNested_t::opcode_t::~opcode_t() {
    if (!n_body) {
    }
}

castNested_t::opcode_t::intval_t::intval_t(kaitai::kstream* p__io, castNested_t::opcode_t* p__parent, castNested_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void castNested_t::opcode_t::intval_t::_read() {
    m_value = m__io->read_u1();
}

castNested_t::opcode_t::intval_t::~intval_t() {
}

castNested_t::opcode_t::strval_t::strval_t(kaitai::kstream* p__io, castNested_t::opcode_t* p__parent, castNested_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void castNested_t::opcode_t::strval_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("ASCII"));
}

castNested_t::opcode_t::strval_t::~strval_t() {
}

castNested_t::opcode_t::strval_t* castNested_t::opcodes_0_str() {
    if (f_opcodes_0_str)
        return m_opcodes_0_str;
    m_opcodes_0_str = static_cast<castNested_t::opcode_t::strval_t*>(opcodes()->at(0)->body());
    f_opcodes_0_str = true;
    return m_opcodes_0_str;
}

std::string castNested_t::opcodes_0_str_value() {
    if (f_opcodes_0_str_value)
        return m_opcodes_0_str_value;
    m_opcodes_0_str_value = static_cast<castNested_t::opcode_t::strval_t*>(opcodes()->at(0)->body())->value();
    f_opcodes_0_str_value = true;
    return m_opcodes_0_str_value;
}

castNested_t::opcode_t::intval_t* castNested_t::opcodes_1_int() {
    if (f_opcodes_1_int)
        return m_opcodes_1_int;
    m_opcodes_1_int = static_cast<castNested_t::opcode_t::intval_t*>(opcodes()->at(1)->body());
    f_opcodes_1_int = true;
    return m_opcodes_1_int;
}

uint8_t castNested_t::opcodes_1_int_value() {
    if (f_opcodes_1_int_value)
        return m_opcodes_1_int_value;
    m_opcodes_1_int_value = static_cast<castNested_t::opcode_t::intval_t*>(opcodes()->at(1)->body())->value();
    f_opcodes_1_int_value = true;
    return m_opcodes_1_int_value;
}
