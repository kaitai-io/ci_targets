// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "if_struct.h"

ifStruct_t::ifStruct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, ifStruct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_op1 = 0;
    m_op2 = 0;
    m_op3 = 0;
    _read();
}

void ifStruct_t::_read() {
    m_op1 = new operation_t(m__io, this, m__root);
    m_op2 = new operation_t(m__io, this, m__root);
    m_op3 = new operation_t(m__io, this, m__root);
}

ifStruct_t::~ifStruct_t() {
    delete m_op1;
    delete m_op2;
    delete m_op3;
}

ifStruct_t::operation_t::operation_t(kaitai::kstream* p__io, ifStruct_t* p__parent, ifStruct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_arg_tuple = 0;
    m_arg_str = 0;
    _read();
}

void ifStruct_t::operation_t::_read() {
    m_opcode = m__io->read_u1();
    n_arg_tuple = true;
    if (opcode() == 84) {
        n_arg_tuple = false;
        m_arg_tuple = new argTuple_t(m__io, this, m__root);
    }
    n_arg_str = true;
    if (opcode() == 83) {
        n_arg_str = false;
        m_arg_str = new argStr_t(m__io, this, m__root);
    }
}

ifStruct_t::operation_t::~operation_t() {
    if (!n_arg_tuple) {
        delete m_arg_tuple;
    }
    if (!n_arg_str) {
        delete m_arg_str;
    }
}

ifStruct_t::argTuple_t::argTuple_t(kaitai::kstream* p__io, ifStruct_t::operation_t* p__parent, ifStruct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void ifStruct_t::argTuple_t::_read() {
    m_num1 = m__io->read_u1();
    m_num2 = m__io->read_u1();
}

ifStruct_t::argTuple_t::~argTuple_t() {
}

ifStruct_t::argStr_t::argStr_t(kaitai::kstream* p__io, ifStruct_t::operation_t* p__parent, ifStruct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void ifStruct_t::argStr_t::_read() {
    m_len = m__io->read_u1();
    m_str = kaitai::kstream::bytes_to_str(m__io->read_bytes(len()), std::string("UTF-8"));
}

ifStruct_t::argStr_t::~argStr_t() {
}
