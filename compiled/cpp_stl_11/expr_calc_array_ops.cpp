// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_calc_array_ops.h"
#include <algorithm>

expr_calc_array_ops_t::expr_calc_array_ops_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_calc_array_ops_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
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
    m_double_array = std::unique_ptr<std::vector<double>>(new std::vector<double>{10.0, 25.0, 50.0, 100.0, 3.14159});
    f_double_array = true;
    return m_double_array.get();
}

double expr_calc_array_ops_t::double_array_first() {
    if (f_double_array_first)
        return m_double_array_first;
    m_double_array_first = double_array()->front();
    f_double_array_first = true;
    return m_double_array_first;
}

double expr_calc_array_ops_t::double_array_last() {
    if (f_double_array_last)
        return m_double_array_last;
    m_double_array_last = double_array()->back();
    f_double_array_last = true;
    return m_double_array_last;
}

double expr_calc_array_ops_t::double_array_max() {
    if (f_double_array_max)
        return m_double_array_max;
    m_double_array_max = *std::max_element(double_array()->begin(), double_array()->end());
    f_double_array_max = true;
    return m_double_array_max;
}

double expr_calc_array_ops_t::double_array_mid() {
    if (f_double_array_mid)
        return m_double_array_mid;
    m_double_array_mid = double_array()->at(1);
    f_double_array_mid = true;
    return m_double_array_mid;
}

double expr_calc_array_ops_t::double_array_min() {
    if (f_double_array_min)
        return m_double_array_min;
    m_double_array_min = *std::min_element(double_array()->begin(), double_array()->end());
    f_double_array_min = true;
    return m_double_array_min;
}

int32_t expr_calc_array_ops_t::double_array_size() {
    if (f_double_array_size)
        return m_double_array_size;
    m_double_array_size = double_array()->size();
    f_double_array_size = true;
    return m_double_array_size;
}

std::vector<int32_t>* expr_calc_array_ops_t::int_array() {
    if (f_int_array)
        return m_int_array.get();
    m_int_array = std::unique_ptr<std::vector<int32_t>>(new std::vector<int32_t>{10, 25, 50, 100, 200, 500, 1000});
    f_int_array = true;
    return m_int_array.get();
}

int32_t expr_calc_array_ops_t::int_array_first() {
    if (f_int_array_first)
        return m_int_array_first;
    m_int_array_first = int_array()->front();
    f_int_array_first = true;
    return m_int_array_first;
}

int32_t expr_calc_array_ops_t::int_array_last() {
    if (f_int_array_last)
        return m_int_array_last;
    m_int_array_last = int_array()->back();
    f_int_array_last = true;
    return m_int_array_last;
}

int32_t expr_calc_array_ops_t::int_array_max() {
    if (f_int_array_max)
        return m_int_array_max;
    m_int_array_max = *std::max_element(int_array()->begin(), int_array()->end());
    f_int_array_max = true;
    return m_int_array_max;
}

int32_t expr_calc_array_ops_t::int_array_mid() {
    if (f_int_array_mid)
        return m_int_array_mid;
    m_int_array_mid = int_array()->at(1);
    f_int_array_mid = true;
    return m_int_array_mid;
}

int32_t expr_calc_array_ops_t::int_array_min() {
    if (f_int_array_min)
        return m_int_array_min;
    m_int_array_min = *std::min_element(int_array()->begin(), int_array()->end());
    f_int_array_min = true;
    return m_int_array_min;
}

int32_t expr_calc_array_ops_t::int_array_size() {
    if (f_int_array_size)
        return m_int_array_size;
    m_int_array_size = int_array()->size();
    f_int_array_size = true;
    return m_int_array_size;
}

std::vector<std::string>* expr_calc_array_ops_t::str_array() {
    if (f_str_array)
        return m_str_array.get();
    m_str_array = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>{std::string("un"), std::string("deux"), std::string("trois"), std::string("quatre")});
    f_str_array = true;
    return m_str_array.get();
}

std::string expr_calc_array_ops_t::str_array_first() {
    if (f_str_array_first)
        return m_str_array_first;
    m_str_array_first = str_array()->front();
    f_str_array_first = true;
    return m_str_array_first;
}

std::string expr_calc_array_ops_t::str_array_last() {
    if (f_str_array_last)
        return m_str_array_last;
    m_str_array_last = str_array()->back();
    f_str_array_last = true;
    return m_str_array_last;
}

std::string expr_calc_array_ops_t::str_array_max() {
    if (f_str_array_max)
        return m_str_array_max;
    m_str_array_max = *std::max_element(str_array()->begin(), str_array()->end());
    f_str_array_max = true;
    return m_str_array_max;
}

std::string expr_calc_array_ops_t::str_array_mid() {
    if (f_str_array_mid)
        return m_str_array_mid;
    m_str_array_mid = str_array()->at(1);
    f_str_array_mid = true;
    return m_str_array_mid;
}

std::string expr_calc_array_ops_t::str_array_min() {
    if (f_str_array_min)
        return m_str_array_min;
    m_str_array_min = *std::min_element(str_array()->begin(), str_array()->end());
    f_str_array_min = true;
    return m_str_array_min;
}

int32_t expr_calc_array_ops_t::str_array_size() {
    if (f_str_array_size)
        return m_str_array_size;
    m_str_array_size = str_array()->size();
    f_str_array_size = true;
    return m_str_array_size;
}
