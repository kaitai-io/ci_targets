// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_enum.h"



expr_enum_t::expr_enum_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, expr_enum_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    f_const_dog = false;
    f_derived_boom = false;
    f_derived_dog = false;
    _read();
}

void expr_enum_t::_read() {
    m_one = m__io->read_u1();
}

expr_enum_t::~expr_enum_t() {
    // one: Int1Type(false), isArray=false, hasRaw=false, hasIO=false
}

expr_enum_t::animal_t expr_enum_t::const_dog() {
    if (f_const_dog)
        return m_const_dog;
    m_const_dog = static_cast<expr_enum_t::animal_t>(4);
    f_const_dog = true;
    return m_const_dog;
}

expr_enum_t::animal_t expr_enum_t::derived_boom() {
    if (f_derived_boom)
        return m_derived_boom;
    m_derived_boom = static_cast<expr_enum_t::animal_t>(one());
    f_derived_boom = true;
    return m_derived_boom;
}

expr_enum_t::animal_t expr_enum_t::derived_dog() {
    if (f_derived_dog)
        return m_derived_dog;
    m_derived_dog = static_cast<expr_enum_t::animal_t>((one() - 98));
    f_derived_dog = true;
    return m_derived_dog;
}
