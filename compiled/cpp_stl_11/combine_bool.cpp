// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "combine_bool.h"

combine_bool_t::combine_bool_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, combine_bool_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_bool_calc = false;
    f_bool_calc_bit = false;
    _read();
}

void combine_bool_t::_read() {
    m_bool_bit = m__io->read_bits_int(1);
}

combine_bool_t::~combine_bool_t() {
}

bool combine_bool_t::bool_calc() {
    if (f_bool_calc)
        return m_bool_calc;
    m_bool_calc = false;
    f_bool_calc = true;
    return m_bool_calc;
}

bool combine_bool_t::bool_calc_bit() {
    if (f_bool_calc_bit)
        return m_bool_calc_bit;
    m_bool_calc_bit = ((true) ? (bool_calc()) : (bool_bit()));
    f_bool_calc_bit = true;
    return m_bool_calc_bit;
}
