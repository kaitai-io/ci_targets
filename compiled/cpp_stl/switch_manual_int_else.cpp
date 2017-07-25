// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "switch_manual_int_else.h"



switch_manual_int_else_t::switch_manual_int_else_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, switch_manual_int_else_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void switch_manual_int_else_t::_read() {
    m_opcodes = new std::vector<opcode_t*>();
    while (!m__io->is_eof()) {
        m_opcodes->push_back(new opcode_t(m__io, this, m__root));
    }
}

switch_manual_int_else_t::~switch_manual_int_else_t() {
    // opcodes: UserTypeInstream(List(opcode),None), isArray=true, hasRaw=false, hasIO=false
    for (std::vector<opcode_t*>::iterator it = m_opcodes->begin(); it != m_opcodes->end(); ++it) {
        delete *it;
    }
    delete m_opcodes;
}

switch_manual_int_else_t::opcode_t::opcode_t(kaitai::kstream *p_io, switch_manual_int_else_t* p_parent, switch_manual_int_else_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void switch_manual_int_else_t::opcode_t::_read() {
    m_code = m__io->read_u1();
    switch (code()) {
    case 73: {
        m_body = new intval_t(m__io, this, m__root);
        break;
    }
    case 83: {
        m_body = new strval_t(m__io, this, m__root);
        break;
    }
    default: {
        m_body = new noneval_t(m__io, this, m__root);
        break;
    }
    }
}

switch_manual_int_else_t::opcode_t::~opcode_t() {
    // code: Int1Type(false), isArray=false, hasRaw=false, hasIO=false
    // body: KaitaiStructType, isArray=false, hasRaw=false, hasIO=false
    delete m_body;
}

switch_manual_int_else_t::opcode_t::intval_t::intval_t(kaitai::kstream *p_io, switch_manual_int_else_t::opcode_t* p_parent, switch_manual_int_else_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void switch_manual_int_else_t::opcode_t::intval_t::_read() {
    m_value = m__io->read_u1();
}

switch_manual_int_else_t::opcode_t::intval_t::~intval_t() {
    // value: Int1Type(false), isArray=false, hasRaw=false, hasIO=false
}

switch_manual_int_else_t::opcode_t::strval_t::strval_t(kaitai::kstream *p_io, switch_manual_int_else_t::opcode_t* p_parent, switch_manual_int_else_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void switch_manual_int_else_t::opcode_t::strval_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("ASCII"));
}

switch_manual_int_else_t::opcode_t::strval_t::~strval_t() {
    // value: StrFromBytesType(BytesTerminatedType(0,false,true,true,None),ASCII), isArray=false, hasRaw=false, hasIO=false
}

switch_manual_int_else_t::opcode_t::noneval_t::noneval_t(kaitai::kstream *p_io, switch_manual_int_else_t::opcode_t* p_parent, switch_manual_int_else_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void switch_manual_int_else_t::opcode_t::noneval_t::_read() {
    m_filler = m__io->read_u4le();
}

switch_manual_int_else_t::opcode_t::noneval_t::~noneval_t() {
    // filler: IntMultiType(false,Width4,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
}
