// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "nav_parent_false.h"



nav_parent_false_t::nav_parent_false_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, nav_parent_false_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void nav_parent_false_t::_read() {
    m_child_size = m__io->read_u1();
    m_element_a = new parent_a_t(m__io, this, m__root);
    m_element_b = new parent_b_t(m__io, this, m__root);
}

nav_parent_false_t::~nav_parent_false_t() {
    // child_size: Int1Type(false), isArray=false, hasRaw=false, hasIO=false
    // element_a: UserTypeInstream(List(parent_a),None), isArray=false, hasRaw=false, hasIO=false
    delete m_element_a;
    // element_b: UserTypeInstream(List(parent_b),None), isArray=false, hasRaw=false, hasIO=false
    delete m_element_b;
}

nav_parent_false_t::parent_a_t::parent_a_t(kaitai::kstream *p_io, nav_parent_false_t* p_parent, nav_parent_false_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void nav_parent_false_t::parent_a_t::_read() {
    m_foo = new child_t(m__io, this, m__root);
    m_bar = new parent_b_t(m__io, this, m__root);
}

nav_parent_false_t::parent_a_t::~parent_a_t() {
    // foo: UserTypeInstream(List(child),None), isArray=false, hasRaw=false, hasIO=false
    delete m_foo;
    // bar: UserTypeInstream(List(parent_b),None), isArray=false, hasRaw=false, hasIO=false
    delete m_bar;
}

nav_parent_false_t::parent_b_t::parent_b_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, nav_parent_false_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void nav_parent_false_t::parent_b_t::_read() {
    m_foo = new child_t(m__io, 0, m__root);
}

nav_parent_false_t::parent_b_t::~parent_b_t() {
    // foo: UserTypeInstream(List(child),Some(Bool(false))), isArray=false, hasRaw=false, hasIO=false
    delete m_foo;
}

nav_parent_false_t::child_t::child_t(kaitai::kstream *p_io, nav_parent_false_t::parent_a_t* p_parent, nav_parent_false_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void nav_parent_false_t::child_t::_read() {
    m_code = m__io->read_u1();
    n_more = true;
    if (code() == 73) {
        n_more = false;
        m_more = m__io->read_bytes(_parent()->_parent()->child_size());
    }
}

nav_parent_false_t::child_t::~child_t() {
    // code: Int1Type(false), isArray=false, hasRaw=false, hasIO=false
    if (!n_more) {
        // more: BytesLimitType(Attribute(Attribute(Name(identifier(_parent)),identifier(_parent)),identifier(child_size)),None,false,None,None), isArray=false, hasRaw=false, hasIO=false
    }
}
