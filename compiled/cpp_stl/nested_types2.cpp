// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "nested_types2.h"



nested_types2_t::nested_types2_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, nested_types2_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void nested_types2_t::_read() {
    m_one = new subtype_a_t(m__io, this, m__root);
    m_two = new subtype_b_t(m__io, this, m__root);
}

nested_types2_t::~nested_types2_t() {
    // one: UserTypeInstream(List(subtype_a),None), isArray=false, hasRaw=false, hasIO=false
    delete m_one;
    // two: UserTypeInstream(List(subtype_b),None), isArray=false, hasRaw=false, hasIO=false
    delete m_two;
}

nested_types2_t::subtype_a_t::subtype_a_t(kaitai::kstream *p_io, nested_types2_t* p_parent, nested_types2_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void nested_types2_t::subtype_a_t::_read() {
    m_typed_at_root = new subtype_b_t(m__io, this, m__root);
    m_typed_here1 = new subtype_c_t(m__io, this, m__root);
    m_typed_here2 = new subtype_cc_t(m__io, this, m__root);
}

nested_types2_t::subtype_a_t::~subtype_a_t() {
    // typed_at_root: UserTypeInstream(List(subtype_b),None), isArray=false, hasRaw=false, hasIO=false
    delete m_typed_at_root;
    // typed_here1: UserTypeInstream(List(subtype_c),None), isArray=false, hasRaw=false, hasIO=false
    delete m_typed_here1;
    // typed_here2: UserTypeInstream(List(subtype_cc),None), isArray=false, hasRaw=false, hasIO=false
    delete m_typed_here2;
}

nested_types2_t::subtype_a_t::subtype_c_t::subtype_c_t(kaitai::kstream *p_io, nested_types2_t::subtype_a_t* p_parent, nested_types2_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void nested_types2_t::subtype_a_t::subtype_c_t::_read() {
    m_value_c = m__io->read_s1();
    m_typed_here = new subtype_d_t(m__io, this, m__root);
    m_typed_parent = new subtype_cc_t(m__io, this, m__root);
    m_typed_root = new subtype_b_t(m__io, this, m__root);
}

nested_types2_t::subtype_a_t::subtype_c_t::~subtype_c_t() {
    // value_c: Int1Type(true), isArray=false, hasRaw=false, hasIO=false
    // typed_here: UserTypeInstream(List(subtype_d),None), isArray=false, hasRaw=false, hasIO=false
    delete m_typed_here;
    // typed_parent: UserTypeInstream(List(subtype_cc),None), isArray=false, hasRaw=false, hasIO=false
    delete m_typed_parent;
    // typed_root: UserTypeInstream(List(subtype_b),None), isArray=false, hasRaw=false, hasIO=false
    delete m_typed_root;
}

nested_types2_t::subtype_a_t::subtype_c_t::subtype_d_t::subtype_d_t(kaitai::kstream *p_io, nested_types2_t::subtype_a_t::subtype_c_t* p_parent, nested_types2_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void nested_types2_t::subtype_a_t::subtype_c_t::subtype_d_t::_read() {
    m_value_d = m__io->read_s1();
}

nested_types2_t::subtype_a_t::subtype_c_t::subtype_d_t::~subtype_d_t() {
    // value_d: Int1Type(true), isArray=false, hasRaw=false, hasIO=false
}

nested_types2_t::subtype_a_t::subtype_cc_t::subtype_cc_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, nested_types2_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void nested_types2_t::subtype_a_t::subtype_cc_t::_read() {
    m_value_cc = m__io->read_s1();
}

nested_types2_t::subtype_a_t::subtype_cc_t::~subtype_cc_t() {
    // value_cc: Int1Type(true), isArray=false, hasRaw=false, hasIO=false
}

nested_types2_t::subtype_b_t::subtype_b_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, nested_types2_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void nested_types2_t::subtype_b_t::_read() {
    m_value_b = m__io->read_s1();
}

nested_types2_t::subtype_b_t::~subtype_b_t() {
    // value_b: Int1Type(true), isArray=false, hasRaw=false, hasIO=false
}
