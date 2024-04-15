// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "enum_if.h"

enum_if_t::enum_if_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_if_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_op1 = nullptr;
    m_op2 = nullptr;
    m_op3 = nullptr;
    _read();
}

void enum_if_t::_read() {
    m_op1 = std::unique_ptr<operation_t>(new operation_t(m__io, this, m__root));
    m_op2 = std::unique_ptr<operation_t>(new operation_t(m__io, this, m__root));
    m_op3 = std::unique_ptr<operation_t>(new operation_t(m__io, this, m__root));
}

enum_if_t::~enum_if_t() {
    _clean_up();
}

void enum_if_t::_clean_up() {
}

enum_if_t::arg_str_t::arg_str_t(kaitai::kstream* p__io, enum_if_t::operation_t* p__parent, enum_if_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void enum_if_t::arg_str_t::_read() {
    m_len = m__io->read_u1();
    m_str = kaitai::kstream::bytes_to_str(m__io->read_bytes(len()), "UTF-8");
}

enum_if_t::arg_str_t::~arg_str_t() {
    _clean_up();
}

void enum_if_t::arg_str_t::_clean_up() {
}

enum_if_t::arg_tuple_t::arg_tuple_t(kaitai::kstream* p__io, enum_if_t::operation_t* p__parent, enum_if_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void enum_if_t::arg_tuple_t::_read() {
    m_num1 = m__io->read_u1();
    m_num2 = m__io->read_u1();
}

enum_if_t::arg_tuple_t::~arg_tuple_t() {
    _clean_up();
}

void enum_if_t::arg_tuple_t::_clean_up() {
}

enum_if_t::operation_t::operation_t(kaitai::kstream* p__io, enum_if_t* p__parent, enum_if_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_arg_tuple = nullptr;
    m_arg_str = nullptr;
    _read();
}

void enum_if_t::operation_t::_read() {
    m_opcode = static_cast<enum_if_t::opcodes_t>(m__io->read_u1());
    n_arg_tuple = true;
    if (opcode() == enum_if_t::OPCODES_A_TUPLE) {
        n_arg_tuple = false;
        m_arg_tuple = std::unique_ptr<arg_tuple_t>(new arg_tuple_t(m__io, this, m__root));
    }
    n_arg_str = true;
    if (opcode() == enum_if_t::OPCODES_A_STRING) {
        n_arg_str = false;
        m_arg_str = std::unique_ptr<arg_str_t>(new arg_str_t(m__io, this, m__root));
    }
}

enum_if_t::operation_t::~operation_t() {
    _clean_up();
}

void enum_if_t::operation_t::_clean_up() {
    if (!n_arg_tuple) {
    }
    if (!n_arg_str) {
    }
}
