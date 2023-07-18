// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "enum_if.h"

enum_if_t::enum_if_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_if_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_op1 = 0;
    m_op2 = 0;
    m_op3 = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void enum_if_t::_read() {
    m_op1 = new operation_t(m__io, this, m__root);
    m_op2 = new operation_t(m__io, this, m__root);
    m_op3 = new operation_t(m__io, this, m__root);
}

enum_if_t::~enum_if_t() {
    _clean_up();
}

void enum_if_t::_clean_up() {
    if (m_op1) {
        delete m_op1; m_op1 = 0;
    }
    if (m_op2) {
        delete m_op2; m_op2 = 0;
    }
    if (m_op3) {
        delete m_op3; m_op3 = 0;
    }
}

enum_if_t::operation_t::operation_t(kaitai::kstream* p__io, enum_if_t* p__parent, enum_if_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_arg_tuple = 0;
    m_arg_str = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void enum_if_t::operation_t::_read() {
    m_opcode = static_cast<enum_if_t::opcodes_t>(m__io->read_u1());
    n_arg_tuple = true;
    if (opcode() == enum_if_t::OPCODES_A_TUPLE) {
        n_arg_tuple = false;
        m_arg_tuple = new arg_tuple_t(m__io, this, m__root);
    }
    n_arg_str = true;
    if (opcode() == enum_if_t::OPCODES_A_STRING) {
        n_arg_str = false;
        m_arg_str = new arg_str_t(m__io, this, m__root);
    }
}

enum_if_t::operation_t::~operation_t() {
    _clean_up();
}

void enum_if_t::operation_t::_clean_up() {
    if (!n_arg_tuple) {
        if (m_arg_tuple) {
            delete m_arg_tuple; m_arg_tuple = 0;
        }
    }
    if (!n_arg_str) {
        if (m_arg_str) {
            delete m_arg_str; m_arg_str = 0;
        }
    }
}

enum_if_t::arg_tuple_t::arg_tuple_t(kaitai::kstream* p__io, enum_if_t::operation_t* p__parent, enum_if_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

enum_if_t::arg_str_t::arg_str_t(kaitai::kstream* p__io, enum_if_t::operation_t* p__parent, enum_if_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
