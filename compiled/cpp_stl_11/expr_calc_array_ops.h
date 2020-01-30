#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class expr_calc_array_ops_t : public kaitai::kstruct {

public:

    expr_calc_array_ops_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, expr_calc_array_ops_t* p__root = nullptr);

private:
    void _read();

public:
    ~expr_calc_array_ops_t();

private:
    bool f_double_array;
    std::vector<double>* m_double_array;

public:
    std::vector<double>* double_array();

private:
    bool f_int_array_size;
    int32_t m_int_array_size;

public:
    int32_t int_array_size();

private:
    bool f_int_array_max;
    int32_t m_int_array_max;

public:
    int32_t int_array_max();

private:
    bool f_double_array_max;
    double m_double_array_max;

public:
    double double_array_max();

private:
    bool f_str_array_max;
    std::string m_str_array_max;

public:
    std::string str_array_max();

private:
    bool f_str_array_min;
    std::string m_str_array_min;

public:
    std::string str_array_min();

private:
    bool f_double_array_mid;
    double m_double_array_mid;

public:
    double double_array_mid();

private:
    bool f_str_array;
    std::vector<std::string>* m_str_array;

public:
    std::vector<std::string>* str_array();

private:
    bool f_double_array_size;
    int32_t m_double_array_size;

public:
    int32_t double_array_size();

private:
    bool f_str_array_first;
    std::string m_str_array_first;

public:
    std::string str_array_first();

private:
    bool f_str_array_last;
    std::string m_str_array_last;

public:
    std::string str_array_last();

private:
    bool f_str_array_mid;
    std::string m_str_array_mid;

public:
    std::string str_array_mid();

private:
    bool f_double_array_last;
    double m_double_array_last;

public:
    double double_array_last();

private:
    bool f_int_array_min;
    int32_t m_int_array_min;

public:
    int32_t int_array_min();

private:
    bool f_str_array_size;
    int32_t m_str_array_size;

public:
    int32_t str_array_size();

private:
    bool f_int_array_first;
    int32_t m_int_array_first;

public:
    int32_t int_array_first();

private:
    bool f_double_array_first;
    double m_double_array_first;

public:
    double double_array_first();

private:
    bool f_int_array_mid;
    int32_t m_int_array_mid;

public:
    int32_t int_array_mid();

private:
    bool f_double_array_min;
    double m_double_array_min;

public:
    double double_array_min();

private:
    bool f_int_array;
    std::vector<int32_t>* m_int_array;

public:
    std::vector<int32_t>* int_array();

private:
    bool f_int_array_last;
    int32_t m_int_array_last;

public:
    int32_t int_array_last();

private:
    expr_calc_array_ops_t* m__root;
    kaitai::kstruct* m__parent;

public:
    expr_calc_array_ops_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
