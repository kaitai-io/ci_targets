// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "imports_circular_a.h"


#include "imports_circular_b.h"

imports_circular_a_t::imports_circular_a_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, imports_circular_a_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void imports_circular_a_t::_read() {
    m_code = m__io->read_u1();
    m_two = new imports_circular_b_t(m__io);
}

imports_circular_a_t::~imports_circular_a_t() {
    // code: Int1Type(false), isArray=false, hasRaw=false, hasIO=false
    // two: UserTypeInstream(List(imports_circular_b),None), isArray=false, hasRaw=false, hasIO=false
    delete m_two;
}
