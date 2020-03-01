// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "params_enum.h"

paramsEnum_t::paramsEnum_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, paramsEnum_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_invoke_with_param = 0;
    _read();
}

void paramsEnum_t::_read() {
    m_one = static_cast<paramsEnum_t::animal_t>(m__io->read_u1());
    m_invoke_with_param = new withParam_t(one(), m__io, this, m__root);
}

paramsEnum_t::~paramsEnum_t() {
    delete m_invoke_with_param;
}

paramsEnum_t::withParam_t::withParam_t(animal_t p_enumerated_one, kaitai::kstream* p__io, paramsEnum_t* p__parent, paramsEnum_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_enumerated_one = p_enumerated_one;
    f_is_cat = false;
    _read();
}

void paramsEnum_t::withParam_t::_read() {
}

paramsEnum_t::withParam_t::~withParam_t() {
}

bool paramsEnum_t::withParam_t::is_cat() {
    if (f_is_cat)
        return m_is_cat;
    m_is_cat = enumerated_one() == paramsEnum_t::ANIMAL_CAT;
    f_is_cat = true;
    return m_is_cat;
}
