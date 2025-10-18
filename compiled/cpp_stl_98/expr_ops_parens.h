#ifndef EXPR_OPS_PARENS_H_
#define EXPR_OPS_PARENS_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class expr_ops_parens_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class expr_ops_parens_t : public kaitai::kstruct {

public:

    expr_ops_parens_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, expr_ops_parens_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~expr_ops_parens_t();
    int32_t bool_and();
    int32_t bool_eq();
    int32_t bool_or();
    double f_2pi();
    double f_e();
    int32_t f_sum_to_int();
    int8_t i_42();
    int32_t i_m13();
    std::string i_sum_to_str();
    std::string str_0_to_4();
    std::string str_5_to_9();
    int32_t str_concat_len();
    std::string str_concat_rev();
    std::string str_concat_substr_2_to_7();
    int32_t str_concat_to_i();
    expr_ops_parens_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_bool_and;
    int32_t m_bool_and;
    bool f_bool_eq;
    int32_t m_bool_eq;
    bool f_bool_or;
    int32_t m_bool_or;
    bool f_f_2pi;
    double m_f_2pi;
    bool f_f_e;
    double m_f_e;
    bool f_f_sum_to_int;
    int32_t m_f_sum_to_int;
    bool f_i_42;
    int8_t m_i_42;
    bool f_i_m13;
    int32_t m_i_m13;
    bool f_i_sum_to_str;
    std::string m_i_sum_to_str;
    bool f_str_0_to_4;
    std::string m_str_0_to_4;
    bool f_str_5_to_9;
    std::string m_str_5_to_9;
    bool f_str_concat_len;
    int32_t m_str_concat_len;
    bool f_str_concat_rev;
    std::string m_str_concat_rev;
    bool f_str_concat_substr_2_to_7;
    std::string m_str_concat_substr_2_to_7;
    bool f_str_concat_to_i;
    int32_t m_str_concat_to_i;
    expr_ops_parens_t* m__root;
    kaitai::kstruct* m__parent;
};

#endif  // EXPR_OPS_PARENS_H_
