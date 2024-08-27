// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_enum.h"
std::set<expr_enum_t::animal_t> expr_enum_t::_build_values_animal_t() {
    std::set<expr_enum_t::animal_t> _t;
    _t.insert(expr_enum_t::ANIMAL_DOG);
    _t.insert(expr_enum_t::ANIMAL_CAT);
    _t.insert(expr_enum_t::ANIMAL_CHICKEN);
    _t.insert(expr_enum_t::ANIMAL_BOOM);
    return _t;
}
const std::set<expr_enum_t::animal_t> expr_enum_t::_values_animal_t = expr_enum_t::_build_values_animal_t();
bool expr_enum_t::_is_defined_animal_t(expr_enum_t::animal_t v) {
    return expr_enum_t::_values_animal_t.find(v) != expr_enum_t::_values_animal_t.end();
}

expr_enum_t::expr_enum_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_enum_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_const_dog = false;
    f_derived_boom = false;
    f_derived_dog = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void expr_enum_t::_read() {
    m_one = m__io->read_u1();
}

expr_enum_t::~expr_enum_t() {
    _clean_up();
}

void expr_enum_t::_clean_up() {
}

expr_enum_t::animal_t expr_enum_t::const_dog() {
    if (f_const_dog)
        return m_const_dog;
    f_const_dog = true;
    m_const_dog = static_cast<expr_enum_t::animal_t>(4);
    return m_const_dog;
}

expr_enum_t::animal_t expr_enum_t::derived_boom() {
    if (f_derived_boom)
        return m_derived_boom;
    f_derived_boom = true;
    m_derived_boom = static_cast<expr_enum_t::animal_t>(one());
    return m_derived_boom;
}

expr_enum_t::animal_t expr_enum_t::derived_dog() {
    if (f_derived_dog)
        return m_derived_dog;
    f_derived_dog = true;
    m_derived_dog = static_cast<expr_enum_t::animal_t>(one() - 98);
    return m_derived_dog;
}
