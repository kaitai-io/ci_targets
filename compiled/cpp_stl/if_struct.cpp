// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "if_struct.h"



if_struct_t::if_struct_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, if_struct_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void if_struct_t::_read() {
    m_op1 = new operation_t(m__io, this, m__root);
    m_op2 = new operation_t(m__io, this, m__root);
    m_op3 = new operation_t(m__io, this, m__root);
}

if_struct_t::~if_struct_t() {
    // op1: UserTypeInstream(List(operation),None), isArray=false, hasRaw=false, hasIO=false
    delete m_op1;
    // op2: UserTypeInstream(List(operation),None), isArray=false, hasRaw=false, hasIO=false
    delete m_op2;
    // op3: UserTypeInstream(List(operation),None), isArray=false, hasRaw=false, hasIO=false
    delete m_op3;
}

if_struct_t::operation_t::operation_t(kaitai::kstream *p_io, if_struct_t* p_parent, if_struct_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
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
    // opcode: Int1Type(false), isArray=false, hasRaw=false, hasIO=false
    if (!n_arg_tuple) {
        // arg_tuple: UserTypeInstream(List(arg_tuple),None), isArray=false, hasRaw=false, hasIO=false
        delete m_arg_tuple;
    }
    if (!n_arg_str) {
        // arg_str: UserTypeInstream(List(arg_str),None), isArray=false, hasRaw=false, hasIO=false
        delete m_arg_str;
    }
}

if_struct_t::arg_tuple_t::arg_tuple_t(kaitai::kstream *p_io, if_struct_t::operation_t* p_parent, if_struct_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void if_struct_t::arg_tuple_t::_read() {
    m_num1 = m__io->read_u1();
    m_num2 = m__io->read_u1();
}

if_struct_t::arg_tuple_t::~arg_tuple_t() {
    // num1: Int1Type(false), isArray=false, hasRaw=false, hasIO=false
    // num2: Int1Type(false), isArray=false, hasRaw=false, hasIO=false
}

if_struct_t::arg_str_t::arg_str_t(kaitai::kstream *p_io, if_struct_t::operation_t* p_parent, if_struct_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void if_struct_t::arg_str_t::_read() {
    m_len = m__io->read_u1();
    m_str = kaitai::kstream::bytes_to_str(m__io->read_bytes(len()), std::string("UTF-8"));
}

if_struct_t::arg_str_t::~arg_str_t() {
    // len: Int1Type(false), isArray=false, hasRaw=false, hasIO=false
    // str: StrFromBytesType(BytesLimitType(Name(identifier(len)),None,false,None,None),UTF-8), isArray=false, hasRaw=false, hasIO=false
}
