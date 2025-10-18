#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class expr_calc_array_ops_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class expr_calc_array_ops_t : public kaitai::kstruct {

public:

    expr_calc_array_ops_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, expr_calc_array_ops_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~expr_calc_array_ops_t();
    std::vector<double>* double_array();
    double double_array_first();
    double double_array_last();
    double double_array_max();
    double double_array_mid();
    double double_array_min();
    int32_t double_array_size();
    std::vector<int32_t>* int_array();
    int32_t int_array_first();
    int32_t int_array_last();
    int32_t int_array_max();
    int32_t int_array_mid();
    int32_t int_array_min();
    int32_t int_array_size();
    std::vector<std::string>* str_array();
    std::string str_array_first();
    std::string str_array_last();
    std::string str_array_max();
    std::string str_array_mid();
    std::string str_array_min();
    int32_t str_array_size();
    expr_calc_array_ops_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_double_array;
    std::unique_ptr<std::vector<double>> m_double_array;
    bool f_double_array_first;
    double m_double_array_first;
    bool f_double_array_last;
    double m_double_array_last;
    bool f_double_array_max;
    double m_double_array_max;
    bool f_double_array_mid;
    double m_double_array_mid;
    bool f_double_array_min;
    double m_double_array_min;
    bool f_double_array_size;
    int32_t m_double_array_size;
    bool f_int_array;
    std::unique_ptr<std::vector<int32_t>> m_int_array;
    bool f_int_array_first;
    int32_t m_int_array_first;
    bool f_int_array_last;
    int32_t m_int_array_last;
    bool f_int_array_max;
    int32_t m_int_array_max;
    bool f_int_array_mid;
    int32_t m_int_array_mid;
    bool f_int_array_min;
    int32_t m_int_array_min;
    bool f_int_array_size;
    int32_t m_int_array_size;
    bool f_str_array;
    std::unique_ptr<std::vector<std::string>> m_str_array;
    bool f_str_array_first;
    std::string m_str_array_first;
    bool f_str_array_last;
    std::string m_str_array_last;
    bool f_str_array_max;
    std::string m_str_array_max;
    bool f_str_array_mid;
    std::string m_str_array_mid;
    bool f_str_array_min;
    std::string m_str_array_min;
    bool f_str_array_size;
    int32_t m_str_array_size;
    expr_calc_array_ops_t* m__root;
    kaitai::kstruct* m__parent;
};
