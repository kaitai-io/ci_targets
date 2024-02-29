// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "if_struct.h"

if_struct_t::if_struct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, if_struct_t* p__root) : kaitai::kstruct(p__io) {
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

void if_struct_t::_read() {
    m_op1 = new operation_t(m__io, this, m__root);
    m_op2 = new operation_t(m__io, this, m__root);
    m_op3 = new operation_t(m__io, this, m__root);
}

if_struct_t::~if_struct_t() {
    _clean_up();
}

void if_struct_t::_clean_up() {
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

if_struct_t::arg_str_t::arg_str_t(kaitai::kstream* p__io, if_struct_t::operation_t* p__parent, if_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void if_struct_t::arg_str_t::_read() {
    m_len = m__io->read_u1();
    m_str = kaitai::kstream::bytes_to_str(m__io->read_bytes(len()), "UTF-8");
}

if_struct_t::arg_str_t::~arg_str_t() {
    _clean_up();
}

void if_struct_t::arg_str_t::_clean_up() {
}

if_struct_t::arg_tuple_t::arg_tuple_t(kaitai::kstream* p__io, if_struct_t::operation_t* p__parent, if_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void if_struct_t::arg_tuple_t::_read() {
    m_num1 = m__io->read_u1();
    m_num2 = m__io->read_u1();
}

if_struct_t::arg_tuple_t::~arg_tuple_t() {
    _clean_up();
}

void if_struct_t::arg_tuple_t::_clean_up() {
}

if_struct_t::operation_t::operation_t(kaitai::kstream* p__io, if_struct_t* p__parent, if_struct_t* p__root) : kaitai::kstruct(p__io) {
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

void if_struct_t::operation_t::_read() {
    m_opcode = m__io->read_u1();
    n_arg_tuple = true;
    if (opcode() == 84) {
        n_arg_tuple = false;
        m_arg_tuple = new arg_tuple_t(m__io, this, m__root);
    }
    n_arg_str = true;
    if (opcode() == 83) {
        n_arg_str = false;
        m_arg_str = new arg_str_t(m__io, this, m__root);
    }
}

if_struct_t::operation_t::~operation_t() {
    _clean_up();
}

void if_struct_t::operation_t::_clean_up() {
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
