// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "process_custom.h"

#include <my_custom_fx.h>
#include <custom_fx.h>

process_custom_t::process_custom_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, process_custom_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void process_custom_t::_read() {
    m__raw_buf1 = m__io->read_bytes(5);
    my_custom_fx_t _process__raw_buf1(7, true, std::string("\x20\x30\x40", 3));
    m_buf1 = _process__raw_buf1.decode(m__raw_buf1);
    m__raw_buf2 = m__io->read_bytes(5);
    nested_t::deeply_t::custom_fx_t _process__raw_buf2(7);
    m_buf2 = _process__raw_buf2.decode(m__raw_buf2);
    m_key = m__io->read_u1();
    m__raw_buf3 = m__io->read_bytes(5);
    my_custom_fx_t _process__raw_buf3(key(), false, std::string("\x00", 1));
    m_buf3 = _process__raw_buf3.decode(m__raw_buf3);
}

process_custom_t::~process_custom_t() {
    // buf1: BytesLimitType(IntNum(5),None,false,None,Some(ProcessCustom(List(my_custom_fx),ArrayBuffer(IntNum(7), Bool(true), List(ArrayBuffer(IntNum(32), IntNum(48), IntNum(64))))))), isArray=false, hasRaw=false, hasIO=false
    // buf2: BytesLimitType(IntNum(5),None,false,None,Some(ProcessCustom(List(nested, deeply, custom_fx),ArrayBuffer(IntNum(7))))), isArray=false, hasRaw=false, hasIO=false
    // key: Int1Type(false), isArray=false, hasRaw=false, hasIO=false
    // buf3: BytesLimitType(IntNum(5),None,false,None,Some(ProcessCustom(List(my_custom_fx),ArrayBuffer(Name(identifier(key)), Bool(false), List(ArrayBuffer(IntNum(0))))))), isArray=false, hasRaw=false, hasIO=false
}
