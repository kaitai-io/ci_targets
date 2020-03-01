// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "expr_enum.h"

exprEnum_t::exprEnum_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, exprEnum_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_const_dog = false;
    f_derived_boom = false;
    f_derived_dog = false;
    _read();
}

void exprEnum_t::_read() {
    m_one = m__io->read_u1();
}

exprEnum_t::~exprEnum_t() {
}

exprEnum_t::animal_t exprEnum_t::const_dog() {
    if (f_const_dog)
        return m_const_dog;
    m_const_dog = static_cast<exprEnum_t::animal_t>(4);
    f_const_dog = true;
    return m_const_dog;
}

exprEnum_t::animal_t exprEnum_t::derived_boom() {
    if (f_derived_boom)
        return m_derived_boom;
    m_derived_boom = static_cast<exprEnum_t::animal_t>(one());
    f_derived_boom = true;
    return m_derived_boom;
}

exprEnum_t::animal_t exprEnum_t::derived_dog() {
    if (f_derived_dog)
        return m_derived_dog;
    m_derived_dog = static_cast<exprEnum_t::animal_t>((one() - 98));
    f_derived_dog = true;
    return m_derived_dog;
}
