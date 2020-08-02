// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "params_enum.h"

params_enum_t::params_enum_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, params_enum_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_invoke_with_param = 0;

    try {
        _read();
    } catch(...) {
        _cleanUp();
        throw;
    }
}

void params_enum_t::_read() {
    m_one = static_cast<params_enum_t::animal_t>(m__io->read_u1());
    m_invoke_with_param = new with_param_t(one(), m__io, this, m__root);
}

params_enum_t::~params_enum_t() {
    _cleanUp();
}

void params_enum_t::_cleanUp() {
    if (m_invoke_with_param) {
        delete m_invoke_with_param; m_invoke_with_param = 0;
    }
}

params_enum_t::with_param_t::with_param_t(animal_t p_enumerated_one, kaitai::kstream* p__io, params_enum_t* p__parent, params_enum_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_enumerated_one = p_enumerated_one;
    f_is_cat = false;

    try {
        _read();
    } catch(...) {
        _cleanUp();
        throw;
    }
}

void params_enum_t::with_param_t::_read() {
}

params_enum_t::with_param_t::~with_param_t() {
    _cleanUp();
}

void params_enum_t::with_param_t::_cleanUp() {
}

bool params_enum_t::with_param_t::is_cat() {
    if (f_is_cat)
        return m_is_cat;
    m_is_cat = enumerated_one() == params_enum_t::ANIMAL_CAT;
    f_is_cat = true;
    return m_is_cat;
}
