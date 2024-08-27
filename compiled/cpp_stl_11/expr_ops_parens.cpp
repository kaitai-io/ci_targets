// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_ops_parens.h"

expr_ops_parens_t::expr_ops_parens_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_ops_parens_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_bool_and = false;
    f_bool_eq = false;
    f_bool_or = false;
    f_f_2pi = false;
    f_f_e = false;
    f_f_sum_to_int = false;
    f_i_42 = false;
    f_i_m13 = false;
    f_i_sum_to_str = false;
    f_str_0_to_4 = false;
    f_str_5_to_9 = false;
    f_str_concat_len = false;
    f_str_concat_rev = false;
    f_str_concat_substr_2_to_7 = false;
    f_str_concat_to_i = false;
    _read();
}

void expr_ops_parens_t::_read() {
}

expr_ops_parens_t::~expr_ops_parens_t() {
    _clean_up();
}

void expr_ops_parens_t::_clean_up() {
}

int32_t expr_ops_parens_t::bool_and() {
    if (f_bool_and)
        return m_bool_and;
    f_bool_and = true;
    m_bool_and = (( ((false) && (true)) ) ? 1 : 0);
    return m_bool_and;
}

int32_t expr_ops_parens_t::bool_eq() {
    if (f_bool_eq)
        return m_bool_eq;
    f_bool_eq = true;
    m_bool_eq = ((false == true) ? 1 : 0);
    return m_bool_eq;
}

int32_t expr_ops_parens_t::bool_or() {
    if (f_bool_or)
        return m_bool_or;
    f_bool_or = true;
    m_bool_or = (( ((!(false)) || (false)) ) ? 1 : 0);
    return m_bool_or;
}

double expr_ops_parens_t::f_2pi() {
    if (f_f_2pi)
        return m_f_2pi;
    f_f_2pi = true;
    m_f_2pi = 6.28;
    return m_f_2pi;
}

double expr_ops_parens_t::f_e() {
    if (f_f_e)
        return m_f_e;
    f_f_e = true;
    m_f_e = 2.72;
    return m_f_e;
}

int32_t expr_ops_parens_t::f_sum_to_int() {
    if (f_f_sum_to_int)
        return m_f_sum_to_int;
    f_f_sum_to_int = true;
    m_f_sum_to_int = static_cast<int>(f_2pi() + f_e());
    return m_f_sum_to_int;
}

int8_t expr_ops_parens_t::i_42() {
    if (f_i_42)
        return m_i_42;
    f_i_42 = true;
    m_i_42 = 42;
    return m_i_42;
}

int32_t expr_ops_parens_t::i_m13() {
    if (f_i_m13)
        return m_i_m13;
    f_i_m13 = true;
    m_i_m13 = -13;
    return m_i_m13;
}

std::string expr_ops_parens_t::i_sum_to_str() {
    if (f_i_sum_to_str)
        return m_i_sum_to_str;
    f_i_sum_to_str = true;
    m_i_sum_to_str = kaitai::kstream::to_string(i_42() + i_m13());
    return m_i_sum_to_str;
}

std::string expr_ops_parens_t::str_0_to_4() {
    if (f_str_0_to_4)
        return m_str_0_to_4;
    f_str_0_to_4 = true;
    m_str_0_to_4 = std::string("01234");
    return m_str_0_to_4;
}

std::string expr_ops_parens_t::str_5_to_9() {
    if (f_str_5_to_9)
        return m_str_5_to_9;
    f_str_5_to_9 = true;
    m_str_5_to_9 = std::string("56789");
    return m_str_5_to_9;
}

int32_t expr_ops_parens_t::str_concat_len() {
    if (f_str_concat_len)
        return m_str_concat_len;
    f_str_concat_len = true;
    m_str_concat_len = (str_0_to_4() + str_5_to_9()).length();
    return m_str_concat_len;
}

std::string expr_ops_parens_t::str_concat_rev() {
    if (f_str_concat_rev)
        return m_str_concat_rev;
    f_str_concat_rev = true;
    m_str_concat_rev = kaitai::kstream::reverse(str_0_to_4() + str_5_to_9());
    return m_str_concat_rev;
}

std::string expr_ops_parens_t::str_concat_substr_2_to_7() {
    if (f_str_concat_substr_2_to_7)
        return m_str_concat_substr_2_to_7;
    f_str_concat_substr_2_to_7 = true;
    m_str_concat_substr_2_to_7 = (str_0_to_4() + str_5_to_9()).substr(2, 7 - 2);
    return m_str_concat_substr_2_to_7;
}

int32_t expr_ops_parens_t::str_concat_to_i() {
    if (f_str_concat_to_i)
        return m_str_concat_to_i;
    f_str_concat_to_i = true;
    m_str_concat_to_i = kaitai::kstream::string_to_int(str_0_to_4() + str_5_to_9());
    return m_str_concat_to_i;
}
