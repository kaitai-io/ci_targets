// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "floating_points.h"

floating_points_t::floating_points_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, floating_points_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_single_value_plus_int = false;
    f_single_value_plus_float = false;
    f_double_value_plus_float = false;

    try {
        _read();
    } catch(...) {
        _cleanUp();
        throw;
    }
}

void floating_points_t::_read() {
    m_single_value = m__io->read_f4le();
    m_double_value = m__io->read_f8le();
    m_single_value_be = m__io->read_f4be();
    m_double_value_be = m__io->read_f8be();
    m_approximate_value = m__io->read_f4le();
}

floating_points_t::~floating_points_t() {
    _cleanUp();
}

void floating_points_t::_cleanUp() {
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
