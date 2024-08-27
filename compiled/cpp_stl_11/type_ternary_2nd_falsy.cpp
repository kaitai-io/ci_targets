// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "type_ternary_2nd_falsy.h"

type_ternary_2nd_falsy_t::type_ternary_2nd_falsy_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, type_ternary_2nd_falsy_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_ut = nullptr;
    m_int_array = nullptr;
    m_int_array_empty = nullptr;
    f_null_ut = false;
    f_t = false;
    f_v_false = false;
    f_v_float_neg_zero = false;
    f_v_float_zero = false;
    f_v_int_array_empty = false;
    f_v_int_neg_zero = false;
    f_v_int_zero = false;
    f_v_null_ut = false;
    f_v_str_empty = false;
    f_v_str_w_zero = false;
    _read();
}

void type_ternary_2nd_falsy_t::_read() {
    m_int_truthy = m__io->read_u1();
    m_ut = std::unique_ptr<foo_t>(new foo_t(m__io, this, m__root));
    m_int_array = std::unique_ptr<std::vector<uint8_t>>(new std::vector<uint8_t>());
    const int l_int_array = 2;
    for (int i = 0; i < l_int_array; i++) {
        m_int_array->push_back(std::move(m__io->read_u1()));
    }
    m_int_array_empty = std::unique_ptr<std::vector<uint8_t>>(new std::vector<uint8_t>());
    const int l_int_array_empty = 0;
    for (int i = 0; i < l_int_array_empty; i++) {
        m_int_array_empty->push_back(std::move(m__io->read_u1()));
    }
}

type_ternary_2nd_falsy_t::~type_ternary_2nd_falsy_t() {
    _clean_up();
}

void type_ternary_2nd_falsy_t::_clean_up() {
}

type_ternary_2nd_falsy_t::foo_t::foo_t(kaitai::kstream* p__io, type_ternary_2nd_falsy_t* p__parent, type_ternary_2nd_falsy_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void type_ternary_2nd_falsy_t::foo_t::_read() {
    m_m = m__io->read_u1();
}

type_ternary_2nd_falsy_t::foo_t::~foo_t() {
    _clean_up();
}

void type_ternary_2nd_falsy_t::foo_t::_clean_up() {
}

type_ternary_2nd_falsy_t::foo_t* type_ternary_2nd_falsy_t::null_ut() {
    if (f_null_ut)
        return m_null_ut;
    f_null_ut = true;
    n_null_ut = true;
    if (false) {
        n_null_ut = false;
        m_null_ut = ut();
    }
    return m_null_ut;
}

bool type_ternary_2nd_falsy_t::t() {
    if (f_t)
        return m_t;
    f_t = true;
    m_t = true;
    return m_t;
}

bool type_ternary_2nd_falsy_t::v_false() {
    if (f_v_false)
        return m_v_false;
    f_v_false = true;
    m_v_false = ((t()) ? (false) : (true));
    return m_v_false;
}

double type_ternary_2nd_falsy_t::v_float_neg_zero() {
    if (f_v_float_neg_zero)
        return m_v_float_neg_zero;
    f_v_float_neg_zero = true;
    m_v_float_neg_zero = ((t()) ? (-0.0) : (-2.72));
    return m_v_float_neg_zero;
}

double type_ternary_2nd_falsy_t::v_float_zero() {
    if (f_v_float_zero)
        return m_v_float_zero;
    f_v_float_zero = true;
    m_v_float_zero = ((t()) ? (0.0) : (3.14));
    return m_v_float_zero;
}

std::vector<uint8_t>* type_ternary_2nd_falsy_t::v_int_array_empty() {
    if (f_v_int_array_empty)
        return m_v_int_array_empty;
    f_v_int_array_empty = true;
    m_v_int_array_empty = ((t()) ? (int_array_empty()) : (int_array()));
    return m_v_int_array_empty;
}

int32_t type_ternary_2nd_falsy_t::v_int_neg_zero() {
    if (f_v_int_neg_zero)
        return m_v_int_neg_zero;
    f_v_int_neg_zero = true;
    m_v_int_neg_zero = ((t()) ? (0) : (-20));
    return m_v_int_neg_zero;
}

int8_t type_ternary_2nd_falsy_t::v_int_zero() {
    if (f_v_int_zero)
        return m_v_int_zero;
    f_v_int_zero = true;
    m_v_int_zero = ((t()) ? (0) : (10));
    return m_v_int_zero;
}

type_ternary_2nd_falsy_t::foo_t* type_ternary_2nd_falsy_t::v_null_ut() {
    if (f_v_null_ut)
        return m_v_null_ut;
    f_v_null_ut = true;
    m_v_null_ut = ((t()) ? (null_ut()) : (ut()));
    return m_v_null_ut;
}

std::string type_ternary_2nd_falsy_t::v_str_empty() {
    if (f_v_str_empty)
        return m_v_str_empty;
    f_v_str_empty = true;
    m_v_str_empty = ((t()) ? (std::string("")) : (std::string("kaitai")));
    return m_v_str_empty;
}

std::string type_ternary_2nd_falsy_t::v_str_w_zero() {
    if (f_v_str_w_zero)
        return m_v_str_w_zero;
    f_v_str_w_zero = true;
    m_v_str_w_zero = ((t()) ? (std::string("0")) : (std::string("30")));
    return m_v_str_w_zero;
}
