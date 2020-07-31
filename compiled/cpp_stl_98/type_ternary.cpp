// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "type_ternary.h"

type_ternary_t::type_ternary_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, type_ternary_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_dif_wo_hack = 0;
    m__io__raw_dif_wo_hack = 0;
    m_dif_with_hack = 0;
    m__io__raw_dif_with_hack = 0;
    f_is_hack = false;
    f_dif = false;
    f_dif_value = false;

    try {
        _read();
    } catch(...) {
        this->~type_ternary_t();
        throw;
    }
}

void type_ternary_t::_read() {
    n_dif_wo_hack = true;
    if (!(is_hack())) {
        n_dif_wo_hack = false;
        m__raw_dif_wo_hack = m__io->read_bytes(1);
        m__io__raw_dif_wo_hack = new kaitai::kstream(m__raw_dif_wo_hack);
        m_dif_wo_hack = new dummy_t(m__io__raw_dif_wo_hack, this, m__root);
    }
    m__raw__raw_dif_with_hack = m__io->read_bytes(1);
    m__raw_dif_with_hack = kaitai::kstream::process_xor_one(m__raw__raw_dif_with_hack, 3);
    m__io__raw_dif_with_hack = new kaitai::kstream(m__raw_dif_with_hack);
    m_dif_with_hack = new dummy_t(m__io__raw_dif_with_hack, this, m__root);
}

type_ternary_t::~type_ternary_t() {
    if (!n_dif_wo_hack) {
        delete m__io__raw_dif_wo_hack;
        delete m_dif_wo_hack;
    }
    delete m__io__raw_dif_with_hack;
    delete m_dif_with_hack;
}

type_ternary_t::dummy_t::dummy_t(kaitai::kstream* p__io, type_ternary_t* p__parent, type_ternary_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        this->~dummy_t();
        throw;
    }
}

void type_ternary_t::dummy_t::_read() {
    m_value = m__io->read_u1();
}

type_ternary_t::dummy_t::~dummy_t() {
}

bool type_ternary_t::is_hack() {
    if (f_is_hack)
        return m_is_hack;
    m_is_hack = true;
    f_is_hack = true;
    return m_is_hack;
}

type_ternary_t::dummy_t* type_ternary_t::dif() {
    if (f_dif)
        return m_dif;
    m_dif = ((!(is_hack())) ? (dif_wo_hack()) : (dif_with_hack()));
    f_dif = true;
    return m_dif;
}

uint8_t type_ternary_t::dif_value() {
    if (f_dif_value)
        return m_dif_value;
    m_dif_value = dif()->value();
    f_dif_value = true;
    return m_dif_value;
}
