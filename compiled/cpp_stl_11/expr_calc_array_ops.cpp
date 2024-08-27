// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_calc_array_ops.h"
#include <algorithm>

expr_calc_array_ops_t::expr_calc_array_ops_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_calc_array_ops_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_double_array = false;
    f_double_array_first = false;
    f_double_array_last = false;
    f_double_array_max = false;
    f_double_array_mid = false;
    f_double_array_min = false;
    f_double_array_size = false;
    f_int_array = false;
    f_int_array_first = false;
    f_int_array_last = false;
    f_int_array_max = false;
    f_int_array_mid = false;
    f_int_array_min = false;
    f_int_array_size = false;
    f_str_array = false;
    f_str_array_first = false;
    f_str_array_last = false;
    f_str_array_max = false;
    f_str_array_mid = false;
    f_str_array_min = false;
    f_str_array_size = false;
    _read();
}

void expr_calc_array_ops_t::_read() {
}

expr_calc_array_ops_t::~expr_calc_array_ops_t() {
    _clean_up();
}

void expr_calc_array_ops_t::_clean_up() {
}

std::vector<double>* expr_calc_array_ops_t::double_array() {
    if (f_double_array)
        return m_double_array.get();
    f_double_array = true;
    m_double_array = std::unique_ptr<std::vector<double>>(new std::vector<double>{10.0, 25.0, 50.0, 100.0, 3.14159});
    return m_double_array.get();
}

double expr_calc_array_ops_t::double_array_first() {
    if (f_double_array_first)
        return m_double_array_first;
    f_double_array_first = true;
    m_double_array_first = double_array()->front();
    return m_double_array_first;
}

double expr_calc_array_ops_t::double_array_last() {
    if (f_double_array_last)
        return m_double_array_last;
    f_double_array_last = true;
    m_double_array_last = double_array()->back();
    return m_double_array_last;
}

double expr_calc_array_ops_t::double_array_max() {
    if (f_double_array_max)
        return m_double_array_max;
    f_double_array_max = true;
    m_double_array_max = *std::max_element(double_array()->begin(), double_array()->end());
    return m_double_array_max;
}

double expr_calc_array_ops_t::double_array_mid() {
    if (f_double_array_mid)
        return m_double_array_mid;
    f_double_array_mid = true;
    m_double_array_mid = double_array()->at(1);
    return m_double_array_mid;
}

double expr_calc_array_ops_t::double_array_min() {
    if (f_double_array_min)
        return m_double_array_min;
    f_double_array_min = true;
    m_double_array_min = *std::min_element(double_array()->begin(), double_array()->end());
    return m_double_array_min;
}

int32_t expr_calc_array_ops_t::double_array_size() {
    if (f_double_array_size)
        return m_double_array_size;
    f_double_array_size = true;
    m_double_array_size = double_array()->size();
    return m_double_array_size;
}

std::vector<int32_t>* expr_calc_array_ops_t::int_array() {
    if (f_int_array)
        return m_int_array.get();
    f_int_array = true;
    m_int_array = std::unique_ptr<std::vector<int32_t>>(new std::vector<int32_t>{10, 25, 50, 100, 200, 500, 1000});
    return m_int_array.get();
}

int32_t expr_calc_array_ops_t::int_array_first() {
    if (f_int_array_first)
        return m_int_array_first;
    f_int_array_first = true;
    m_int_array_first = int_array()->front();
    return m_int_array_first;
}

int32_t expr_calc_array_ops_t::int_array_last() {
    if (f_int_array_last)
        return m_int_array_last;
    f_int_array_last = true;
    m_int_array_last = int_array()->back();
    return m_int_array_last;
}

int32_t expr_calc_array_ops_t::int_array_max() {
    if (f_int_array_max)
        return m_int_array_max;
    f_int_array_max = true;
    m_int_array_max = *std::max_element(int_array()->begin(), int_array()->end());
    return m_int_array_max;
}

int32_t expr_calc_array_ops_t::int_array_mid() {
    if (f_int_array_mid)
        return m_int_array_mid;
    f_int_array_mid = true;
    m_int_array_mid = int_array()->at(1);
    return m_int_array_mid;
}

int32_t expr_calc_array_ops_t::int_array_min() {
    if (f_int_array_min)
        return m_int_array_min;
    f_int_array_min = true;
    m_int_array_min = *std::min_element(int_array()->begin(), int_array()->end());
    return m_int_array_min;
}

int32_t expr_calc_array_ops_t::int_array_size() {
    if (f_int_array_size)
        return m_int_array_size;
    f_int_array_size = true;
    m_int_array_size = int_array()->size();
    return m_int_array_size;
}

std::vector<std::string>* expr_calc_array_ops_t::str_array() {
    if (f_str_array)
        return m_str_array.get();
    f_str_array = true;
    m_str_array = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>{std::string("un"), std::string("deux"), std::string("trois"), std::string("quatre")});
    return m_str_array.get();
}

std::string expr_calc_array_ops_t::str_array_first() {
    if (f_str_array_first)
        return m_str_array_first;
    f_str_array_first = true;
    m_str_array_first = str_array()->front();
    return m_str_array_first;
}

std::string expr_calc_array_ops_t::str_array_last() {
    if (f_str_array_last)
        return m_str_array_last;
    f_str_array_last = true;
    m_str_array_last = str_array()->back();
    return m_str_array_last;
}

std::string expr_calc_array_ops_t::str_array_max() {
    if (f_str_array_max)
        return m_str_array_max;
    f_str_array_max = true;
    m_str_array_max = *std::max_element(str_array()->begin(), str_array()->end());
    return m_str_array_max;
}

std::string expr_calc_array_ops_t::str_array_mid() {
    if (f_str_array_mid)
        return m_str_array_mid;
    f_str_array_mid = true;
    m_str_array_mid = str_array()->at(1);
    return m_str_array_mid;
}

std::string expr_calc_array_ops_t::str_array_min() {
    if (f_str_array_min)
        return m_str_array_min;
    f_str_array_min = true;
    m_str_array_min = *std::min_element(str_array()->begin(), str_array()->end());
    return m_str_array_min;
}

int32_t expr_calc_array_ops_t::str_array_size() {
    if (f_str_array_size)
        return m_str_array_size;
    f_str_array_size = true;
    m_str_array_size = str_array()->size();
    return m_str_array_size;
}
