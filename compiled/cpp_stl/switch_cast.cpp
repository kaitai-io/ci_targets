// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "switch_cast.h"



switch_cast_t::switch_cast_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, switch_cast_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    f_first_obj = false;
    f_second_val = false;
    f_err_cast = false;
    _read();
}

void switch_cast_t::_read() {
    m_opcodes = new std::vector<opcode_t*>();
    while (!m__io->is_eof()) {
        m_opcodes->push_back(new opcode_t(m__io, this, m__root));
    }
}

switch_cast_t::~switch_cast_t() {
    // opcodes: UserTypeInstream(List(opcode),None), isArray=true, hasRaw=false, hasIO=false
    for (std::vector<opcode_t*>::iterator it = m_opcodes->begin(); it != m_opcodes->end(); ++it) {
        delete *it;
    }
    delete m_opcodes;
}

switch_cast_t::opcode_t::opcode_t(kaitai::kstream *p_io, switch_cast_t* p_parent, switch_cast_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void switch_cast_t::opcode_t::_read() {
    m_code = m__io->read_u1();
    n_body = true;
    switch (code()) {
    case 73: {
        n_body = false;
        m_body = new intval_t(m__io, this, m__root);
        break;
    }
    case 83: {
        n_body = false;
        m_body = new strval_t(m__io, this, m__root);
        break;
    }
    }
}

switch_cast_t::opcode_t::~opcode_t() {
    // code: Int1Type(false), isArray=false, hasRaw=false, hasIO=false
    if (!n_body) {
        // body: KaitaiStructType, isArray=false, hasRaw=false, hasIO=false
        delete m_body;
    }
}

switch_cast_t::intval_t::intval_t(kaitai::kstream *p_io, switch_cast_t::opcode_t* p_parent, switch_cast_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void switch_cast_t::intval_t::_read() {
    m_value = m__io->read_u1();
}

switch_cast_t::intval_t::~intval_t() {
    // value: Int1Type(false), isArray=false, hasRaw=false, hasIO=false
}

switch_cast_t::strval_t::strval_t(kaitai::kstream *p_io, switch_cast_t::opcode_t* p_parent, switch_cast_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void switch_cast_t::strval_t::_read() {
    m_value = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("ASCII"));
}

switch_cast_t::strval_t::~strval_t() {
    // value: StrFromBytesType(BytesTerminatedType(0,false,true,true,None),ASCII), isArray=false, hasRaw=false, hasIO=false
}

switch_cast_t::strval_t* switch_cast_t::first_obj() {
    if (f_first_obj)
        return m_first_obj;
    m_first_obj = static_cast<strval_t*>(opcodes()->at(0)->body());
    f_first_obj = true;
    return m_first_obj;
}

uint8_t switch_cast_t::second_val() {
    if (f_second_val)
        return m_second_val;
    m_second_val = static_cast<intval_t*>(opcodes()->at(1)->body())->value();
    f_second_val = true;
    return m_second_val;
}

switch_cast_t::strval_t* switch_cast_t::err_cast() {
    if (f_err_cast)
        return m_err_cast;
    m_err_cast = static_cast<strval_t*>(opcodes()->at(2)->body());
    f_err_cast = true;
    return m_err_cast;
}
