// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "switch_cast.h"

switchCast_t::switchCast_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, switchCast_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_opcodes = nullptr;
    f_first_obj = false;
    f_second_val = false;
    f_err_cast = false;
    _read();
}

void switchCast_t::_read() {
    m_opcodes = std::unique_ptr<std::vector<std::unique_ptr<opcode_t>>>(new std::vector<std::unique_ptr<opcode_t>>());
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_opcodes->push_back(std::move(std::unique_ptr<opcode_t>(new opcode_t(m__io, this, m__root))));
            i++;
        }
    }
}

switchCast_t::~switchCast_t() {
}

switchCast_t::opcode_t::opcode_t(kaitai::kstream* p__io, switchCast_t* p__parent, switchCast_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void switchCast_t::opcode_t::_read() {
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

switchCast_t::opcode_t::~opcode_t() {
    if (!n_body) {
    }
}

switchCast_t::intval_t::intval_t(kaitai::kstream* p__io, switchCast_t::opcode_t* p__parent, switchCast_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void switchCast_t::intval_t::_read() {
    m_value = m__io->read_u1();
}

switchCast_t::intval_t::~intval_t() {
}

switchCast_t::strval_t::strval_t(kaitai::kstream* p__io, switchCast_t::opcode_t* p__parent, switchCast_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void switchCast_t::strval_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("ASCII"));
}

switchCast_t::strval_t::~strval_t() {
}

switchCast_t::strval_t* switchCast_t::first_obj() {
    if (f_first_obj)
        return m_first_obj;
    m_first_obj = static_cast<switchCast_t::strval_t*>(opcodes()->at(0)->body());
    f_first_obj = true;
    return m_first_obj;
}

uint8_t switchCast_t::second_val() {
    if (f_second_val)
        return m_second_val;
    m_second_val = static_cast<switchCast_t::intval_t*>(opcodes()->at(1)->body())->value();
    f_second_val = true;
    return m_second_val;
}

switchCast_t::strval_t* switchCast_t::err_cast() {
    if (f_err_cast)
        return m_err_cast;
    m_err_cast = static_cast<switchCast_t::strval_t*>(opcodes()->at(2)->body());
    f_err_cast = true;
    return m_err_cast;
}
