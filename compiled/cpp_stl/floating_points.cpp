// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "floating_points.h"



floating_points_t::floating_points_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, floating_points_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    f_single_value_plus_int = false;
    f_single_value_plus_float = false;
    f_double_value_plus_float = false;
    _read();
}

void floating_points_t::_read() {
    m_single_value = m__io->read_f4le();
    m_double_value = m__io->read_f8le();
    m_single_value_be = m__io->read_f4be();
    m_double_value_be = m__io->read_f8be();
    m_approximate_value = m__io->read_f4le();
}

floating_points_t::~floating_points_t() {
    // single_value: FloatMultiType(Width4,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // double_value: FloatMultiType(Width8,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // single_value_be: FloatMultiType(Width4,Some(BigEndian)), isArray=false, hasRaw=false, hasIO=false
    // double_value_be: FloatMultiType(Width8,Some(BigEndian)), isArray=false, hasRaw=false, hasIO=false
    // approximate_value: FloatMultiType(Width4,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
}

double floating_points_t::single_value_plus_int() {
    if (f_single_value_plus_int)
        return m_single_value_plus_int;
    m_single_value_plus_int = (single_value() + 1);
    f_single_value_plus_int = true;
    return m_single_value_plus_int;
}

double floating_points_t::single_value_plus_float() {
    if (f_single_value_plus_float)
        return m_single_value_plus_float;
    m_single_value_plus_float = (single_value() + 0.5);
    f_single_value_plus_float = true;
    return m_single_value_plus_float;
}

double floating_points_t::double_value_plus_float() {
    if (f_double_value_plus_float)
        return m_double_value_plus_float;
    m_double_value_plus_float = (double_value() + 0.05);
    f_double_value_plus_float = true;
    return m_double_value_plus_float;
}
