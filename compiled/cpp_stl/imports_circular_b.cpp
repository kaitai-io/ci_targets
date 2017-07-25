// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "imports_circular_b.h"


#include "imports_circular_a.h"

imports_circular_b_t::imports_circular_b_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, imports_circular_b_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void imports_circular_b_t::_read() {
    m_initial = m__io->read_u1();
    n_back_ref = true;
    if (initial() == 65) {
        n_back_ref = false;
        m_back_ref = new imports_circular_a_t(m__io);
    }
}

imports_circular_b_t::~imports_circular_b_t() {
    // initial: Int1Type(false), isArray=false, hasRaw=false, hasIO=false
    if (!n_back_ref) {
        // back_ref: UserTypeInstream(List(imports_circular_a),None), isArray=false, hasRaw=false, hasIO=false
        delete m_back_ref;
    }
}
