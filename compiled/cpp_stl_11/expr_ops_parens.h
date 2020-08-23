#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class expr_ops_parens_t : public kaitai::kstruct {

public:

    expr_ops_parens_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, expr_ops_parens_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~expr_ops_parens_t();

private:
    bool f_bool_and;
    int32_t m_bool_and;

public:
    int32_t bool_and();

private:
    bool f_str_0_to_4;
    std::string m_str_0_to_4;

public:
    std::string str_0_to_4();

private:
    bool f_bool_or;
    int32_t m_bool_or;

public:
    int32_t bool_or();

private:
    bool f_f_e;
    double m_f_e;

public:
    double f_e();

private:
    bool f_f_sum_to_int;
    int32_t m_f_sum_to_int;

public:
    int32_t f_sum_to_int();

private:
    bool f_str_concat_rev;
    std::string m_str_concat_rev;

public:
    std::string str_concat_rev();

private:
    bool f_f_pi;
    double m_f_pi;

public:
    double f_pi();

private:
    bool f_i_m13;
    int32_t m_i_m13;

public:
    int32_t i_m13();

private:
    bool f_str_concat_len;
    int32_t m_str_concat_len;

public:
    int32_t str_concat_len();

private:
    bool f_str_concat_to_i;
    int32_t m_str_concat_to_i;

public:
    int32_t str_concat_to_i();

private:
    bool f_i_42;
    int8_t m_i_42;

public:
    int8_t i_42();

private:
    bool f_i_sum_to_str;
    std::string m_i_sum_to_str;

public:
    std::string i_sum_to_str();

private:
    bool f_bool_eq;
    int32_t m_bool_eq;

public:
    int32_t bool_eq();

private:
    bool f_str_5_to_9;
    std::string m_str_5_to_9;

public:
    std::string str_5_to_9();

private:
    bool f_str_concat_substr_2_to_7;
    std::string m_str_concat_substr_2_to_7;

public:
    std::string str_concat_substr_2_to_7();

private:
    expr_ops_parens_t* m__root;
    kaitai::kstruct* m__parent;

public:
    expr_ops_parens_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
