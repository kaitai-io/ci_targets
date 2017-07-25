// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "nested_same_name2.h"



nested_same_name2_t::nested_same_name2_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, nested_same_name2_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void nested_same_name2_t::_read() {
    m_version = m__io->read_u4le();
    m_main_data = new main_t(m__io, this, m__root);
    m_dummy = new dummy_obj_t(m__io, this, m__root);
}

nested_same_name2_t::~nested_same_name2_t() {
    // version: IntMultiType(false,Width4,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // main_data: UserTypeInstream(List(main),None), isArray=false, hasRaw=false, hasIO=false
    delete m_main_data;
    // dummy: UserTypeInstream(List(dummy_obj),None), isArray=false, hasRaw=false, hasIO=false
    delete m_dummy;
}

nested_same_name2_t::main_t::main_t(kaitai::kstream *p_io, nested_same_name2_t* p_parent, nested_same_name2_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void nested_same_name2_t::main_t::_read() {
    m_main_size = m__io->read_s4le();
    m_foo = new foo_obj_t(m__io, this, m__root);
}

nested_same_name2_t::main_t::~main_t() {
    // main_size: IntMultiType(true,Width4,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // foo: UserTypeInstream(List(foo_obj),None), isArray=false, hasRaw=false, hasIO=false
    delete m_foo;
}

nested_same_name2_t::main_t::foo_obj_t::foo_obj_t(kaitai::kstream *p_io, nested_same_name2_t::main_t* p_parent, nested_same_name2_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void nested_same_name2_t::main_t::foo_obj_t::_read() {
    m_data1 = m__io->read_bytes((_parent()->main_size() * 2));
}

nested_same_name2_t::main_t::foo_obj_t::~foo_obj_t() {
    // data1: BytesLimitType(BinOp(Attribute(Name(identifier(_parent)),identifier(main_size)),Mult,IntNum(2)),None,false,None,None), isArray=false, hasRaw=false, hasIO=false
}

nested_same_name2_t::dummy_obj_t::dummy_obj_t(kaitai::kstream *p_io, nested_same_name2_t* p_parent, nested_same_name2_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void nested_same_name2_t::dummy_obj_t::_read() {
    m_dummy_size = m__io->read_s4le();
    m_foo = new foo_obj_t(m__io, this, m__root);
}

nested_same_name2_t::dummy_obj_t::~dummy_obj_t() {
    // dummy_size: IntMultiType(true,Width4,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // foo: UserTypeInstream(List(foo_obj),None), isArray=false, hasRaw=false, hasIO=false
    delete m_foo;
}

nested_same_name2_t::dummy_obj_t::foo_obj_t::foo_obj_t(kaitai::kstream *p_io, nested_same_name2_t::dummy_obj_t* p_parent, nested_same_name2_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void nested_same_name2_t::dummy_obj_t::foo_obj_t::_read() {
    m_data2 = m__io->read_bytes((_parent()->dummy_size() * 2));
}

nested_same_name2_t::dummy_obj_t::foo_obj_t::~foo_obj_t() {
    // data2: BytesLimitType(BinOp(Attribute(Name(identifier(_parent)),identifier(dummy_size)),Mult,IntNum(2)),None,false,None,None), isArray=false, hasRaw=false, hasIO=false
}
