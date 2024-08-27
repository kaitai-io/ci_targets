// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "params_enum.h"
const std::set<params_enum_t::animal_t> params_enum_t::_values_animal_t{
    params_enum_t::ANIMAL_DOG,
    params_enum_t::ANIMAL_CAT,
    params_enum_t::ANIMAL_CHICKEN,
};
bool params_enum_t::_is_defined_animal_t(params_enum_t::animal_t v) {
    return params_enum_t::_values_animal_t.find(v) != params_enum_t::_values_animal_t.end();
}

params_enum_t::params_enum_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, params_enum_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_invoke_with_param = nullptr;
    _read();
}

void params_enum_t::_read() {
    m_one = static_cast<params_enum_t::animal_t>(m__io->read_u1());
    m_invoke_with_param = std::unique_ptr<with_param_t>(new with_param_t(one(), m__io, this, m__root));
}

params_enum_t::~params_enum_t() {
    _clean_up();
}

void params_enum_t::_clean_up() {
}

params_enum_t::with_param_t::with_param_t(animal_t p_enumerated_one, kaitai::kstream* p__io, params_enum_t* p__parent, params_enum_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_enumerated_one = p_enumerated_one;
    f_is_cat = false;
    _read();
}

void params_enum_t::with_param_t::_read() {
}

params_enum_t::with_param_t::~with_param_t() {
    _clean_up();
}

void params_enum_t::with_param_t::_clean_up() {
}

bool params_enum_t::with_param_t::is_cat() {
    if (f_is_cat)
        return m_is_cat;
    f_is_cat = true;
    m_is_cat = enumerated_one() == params_enum_t::ANIMAL_CAT;
    return m_is_cat;
}
