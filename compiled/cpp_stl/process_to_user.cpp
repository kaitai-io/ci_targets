// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "process_to_user.h"



process_to_user_t::process_to_user_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, process_to_user_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void process_to_user_t::_read() {
    m__raw__raw_buf1 = m__io->read_bytes(5);
    m__raw_buf1 = kaitai::kstream::process_rotate_left(m__raw__raw_buf1, 3);
    m__io__raw_buf1 = new kaitai::kstream(m__raw_buf1);
    m_buf1 = new just_str_t(m__io__raw_buf1, this, m__root);
}

process_to_user_t::~process_to_user_t() {
    // buf1: UserTypeFromBytes(List(just_str),None,BytesLimitType(IntNum(5),None,false,None,Some(ProcessRotate(true,IntNum(3)))),Some(ProcessRotate(true,IntNum(3)))), isArray=false, hasRaw=true, hasIO=true
    delete m__io__raw_buf1;
    delete m_buf1;
}

process_to_user_t::just_str_t::just_str_t(kaitai::kstream *p_io, process_to_user_t* p_parent, process_to_user_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void process_to_user_t::just_str_t::_read() {
    m_str = kaitai::kstream::bytes_to_str(m__io->read_bytes_full(), std::string("UTF-8"));
}

process_to_user_t::just_str_t::~just_str_t() {
    // str: StrFromBytesType(BytesEosType(None,false,None,None),UTF-8), isArray=false, hasRaw=false, hasIO=false
}
