// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "type_ternary.h"

typeTernary_t::typeTernary_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, typeTernary_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_dif_wo_hack = 0;
    m__io__raw_dif_wo_hack = 0;
    m_dif_with_hack = 0;
    m__io__raw_dif_with_hack = 0;
    f_is_hack = false;
    f_dif = false;
    f_dif_value = false;
    _read();
}

void typeTernary_t::_read() {
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

typeTernary_t::~typeTernary_t() {
    if (!n_dif_wo_hack) {
        delete m__io__raw_dif_wo_hack;
        delete m_dif_wo_hack;
    }
    delete m__io__raw_dif_with_hack;
    delete m_dif_with_hack;
}

typeTernary_t::dummy_t::dummy_t(kaitai::kstream* p__io, typeTernary_t* p__parent, typeTernary_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void typeTernary_t::dummy_t::_read() {
    m_value = m__io->read_u1();
}

typeTernary_t::dummy_t::~dummy_t() {
}

bool typeTernary_t::is_hack() {
    if (f_is_hack)
        return m_is_hack;
    m_is_hack = true;
    f_is_hack = true;
    return m_is_hack;
}

typeTernary_t::dummy_t* typeTernary_t::dif() {
    if (f_dif)
        return m_dif;
    m_dif = ((!(is_hack())) ? (dif_wo_hack()) : (dif_with_hack()));
    f_dif = true;
    return m_dif;
}

uint8_t typeTernary_t::dif_value() {
    if (f_dif_value)
        return m_dif_value;
    m_dif_value = dif()->value();
    f_dif_value = true;
    return m_dif_value;
}
