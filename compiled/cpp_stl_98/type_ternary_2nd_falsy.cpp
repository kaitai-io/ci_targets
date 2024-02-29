// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "type_ternary_2nd_falsy.h"

type_ternary_2nd_falsy_t::type_ternary_2nd_falsy_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, type_ternary_2nd_falsy_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_ut = 0;
    m_int_array = 0;
    m_int_array_empty = 0;
    f_v_float_neg_zero = false;
    f_v_str_w_zero = false;
    f_v_float_zero = false;
    f_null_ut = false;
    f_t = false;
    f_v_int_zero = false;
    f_v_false = false;
    f_v_str_empty = false;
    f_v_int_neg_zero = false;
    f_v_int_array_empty = false;
    f_v_null_ut = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void type_ternary_2nd_falsy_t::_read() {
    m_int_truthy = m__io->read_u1();
    m_ut = new foo_t(m__io, this, m__root);
    m_int_array = new std::vector<uint8_t>();
    const int l_int_array = 2;
    for (int i = 0; i < l_int_array; i++) {
        m_int_array->push_back(m__io->read_u1());
    }
    m_int_array_empty = new std::vector<uint8_t>();
    const int l_int_array_empty = 0;
    for (int i = 0; i < l_int_array_empty; i++) {
        m_int_array_empty->push_back(m__io->read_u1());
    }
}

type_ternary_2nd_falsy_t::~type_ternary_2nd_falsy_t() {
    _clean_up();
}

void type_ternary_2nd_falsy_t::_clean_up() {
    if (m_ut) {
        delete m_ut; m_ut = 0;
    }
    if (m_int_array) {
        delete m_int_array; m_int_array = 0;
    }
    if (m_int_array_empty) {
        delete m_int_array_empty; m_int_array_empty = 0;
    }
}

type_ternary_2nd_falsy_t::foo_t::foo_t(kaitai::kstream* p__io, type_ternary_2nd_falsy_t* p__parent, type_ternary_2nd_falsy_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void type_ternary_2nd_falsy_t::foo_t::_read() {
    m_m = m__io->read_u1();
}

type_ternary_2nd_falsy_t::foo_t::~foo_t() {
    _clean_up();
}

void type_ternary_2nd_falsy_t::foo_t::_clean_up() {
}

double type_ternary_2nd_falsy_t::v_float_neg_zero() {
    if (f_v_float_neg_zero)
        return m_v_float_neg_zero;
    m_v_float_neg_zero = ((t()) ? (-0.0) : (-2.72));
    f_v_float_neg_zero = true;
    return m_v_float_neg_zero;
}

std::string type_ternary_2nd_falsy_t::v_str_w_zero() {
    if (f_v_str_w_zero)
        return m_v_str_w_zero;
    m_v_str_w_zero = ((t()) ? (std::string("0")) : (std::string("30")));
    f_v_str_w_zero = true;
    return m_v_str_w_zero;
}

double type_ternary_2nd_falsy_t::v_float_zero() {
    if (f_v_float_zero)
        return m_v_float_zero;
    m_v_float_zero = ((t()) ? (0.0) : (3.14));
    f_v_float_zero = true;
    return m_v_float_zero;
}

type_ternary_2nd_falsy_t::foo_t* type_ternary_2nd_falsy_t::null_ut() {
    if (f_null_ut)
        return m_null_ut;
    n_null_ut = true;
    if (false) {
        n_null_ut = false;
        m_null_ut = ut();
    }
    f_null_ut = true;
    return m_null_ut;
}

bool type_ternary_2nd_falsy_t::t() {
    if (f_t)
        return m_t;
    m_t = true;
    f_t = true;
    return m_t;
}

int8_t type_ternary_2nd_falsy_t::v_int_zero() {
    if (f_v_int_zero)
        return m_v_int_zero;
    m_v_int_zero = ((t()) ? (0) : (10));
    f_v_int_zero = true;
    return m_v_int_zero;
}

bool type_ternary_2nd_falsy_t::v_false() {
    if (f_v_false)
        return m_v_false;
    m_v_false = ((t()) ? (false) : (true));
    f_v_false = true;
    return m_v_false;
}

std::string type_ternary_2nd_falsy_t::v_str_empty() {
    if (f_v_str_empty)
        return m_v_str_empty;
    m_v_str_empty = ((t()) ? (std::string("")) : (std::string("kaitai")));
    f_v_str_empty = true;
    return m_v_str_empty;
}

int32_t type_ternary_2nd_falsy_t::v_int_neg_zero() {
    if (f_v_int_neg_zero)
        return m_v_int_neg_zero;
    m_v_int_neg_zero = ((t()) ? (0) : (-20));
    f_v_int_neg_zero = true;
    return m_v_int_neg_zero;
}

std::vector<uint8_t>* type_ternary_2nd_falsy_t::v_int_array_empty() {
    if (f_v_int_array_empty)
        return m_v_int_array_empty;
    m_v_int_array_empty = ((t()) ? (int_array_empty()) : (int_array()));
    f_v_int_array_empty = true;
    return m_v_int_array_empty;
}

type_ternary_2nd_falsy_t::foo_t* type_ternary_2nd_falsy_t::v_null_ut() {
    if (f_v_null_ut)
        return m_v_null_ut;
    m_v_null_ut = ((t()) ? (null_ut()) : (ut()));
    f_v_null_ut = true;
    return m_v_null_ut;
}
