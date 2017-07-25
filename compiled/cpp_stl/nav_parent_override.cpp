// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "nav_parent_override.h"



nav_parent_override_t::nav_parent_override_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, nav_parent_override_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void nav_parent_override_t::_read() {
    m_child_size = m__io->read_u1();
    m_child_1 = new child_t(m__io, this, m__root);
    m_mediator_2 = new mediator_t(m__io, this, m__root);
}

nav_parent_override_t::~nav_parent_override_t() {
    // child_size: Int1Type(false), isArray=false, hasRaw=false, hasIO=false
    // child_1: UserTypeInstream(List(child),None), isArray=false, hasRaw=false, hasIO=false
    delete m_child_1;
    // mediator_2: UserTypeInstream(List(mediator),None), isArray=false, hasRaw=false, hasIO=false
    delete m_mediator_2;
}

nav_parent_override_t::mediator_t::mediator_t(kaitai::kstream *p_io, nav_parent_override_t* p_parent, nav_parent_override_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void nav_parent_override_t::mediator_t::_read() {
    m_child_2 = new child_t(m__io, _parent(), m__root);
}

nav_parent_override_t::mediator_t::~mediator_t() {
    // child_2: UserTypeInstream(List(child),Some(Name(identifier(_parent)))), isArray=false, hasRaw=false, hasIO=false
    delete m_child_2;
}

nav_parent_override_t::child_t::child_t(kaitai::kstream *p_io, nav_parent_override_t* p_parent, nav_parent_override_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void nav_parent_override_t::child_t::_read() {
    m_data = m__io->read_bytes(_parent()->child_size());
}

nav_parent_override_t::child_t::~child_t() {
    // data: BytesLimitType(Attribute(Name(identifier(_parent)),identifier(child_size)),None,false,None,None), isArray=false, hasRaw=false, hasIO=false
}
