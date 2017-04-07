// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "if_struct.h"

#include <iostream>
#include <fstream>

if_struct_t::if_struct_t(kaitai::kstream *p_io, kaitai::kstruct *p_parent, if_struct_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    m_op1 = new operation_t(m__io, this, m__root);
    m_op2 = new operation_t(m__io, this, m__root);
    m_op3 = new operation_t(m__io, this, m__root);
}

if_struct_t::~if_struct_t() {
    delete m_op1;
    delete m_op2;
    delete m_op3;
}

if_struct_t::operation_t::operation_t(kaitai::kstream *p_io, if_struct_t *p_parent, if_struct_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
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
    if (!n_arg_tuple) {
        delete m_arg_tuple;
    }
    if (!n_arg_str) {
        delete m_arg_str;
    }
}

if_struct_t::arg_tuple_t::arg_tuple_t(kaitai::kstream *p_io, if_struct_t::operation_t *p_parent, if_struct_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m_num1 = m__io->read_u1();
    m_num2 = m__io->read_u1();
}

if_struct_t::arg_tuple_t::~arg_tuple_t() {
}

if_struct_t::arg_str_t::arg_str_t(kaitai::kstream *p_io, if_struct_t::operation_t *p_parent, if_struct_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m_len = m__io->read_u1();
    m_str = kaitai::kstream::bytes_to_str(m__io->read_bytes(len()), std::string("UTF-8"));
}

if_struct_t::arg_str_t::~arg_str_t() {
}
