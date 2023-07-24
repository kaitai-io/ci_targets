// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_ops_parens.h"

expr_ops_parens_t::expr_ops_parens_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_ops_parens_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_bool_and = false;
    f_str_0_to_4 = false;
    f_bool_or = false;
    f_f_e = false;
    f_f_sum_to_int = false;
    f_f_2pi = false;
    f_str_concat_rev = false;
    f_i_m13 = false;
    f_str_concat_len = false;
    f_str_concat_to_i = false;
    f_i_42 = false;
    f_i_sum_to_str = false;
    f_bool_eq = false;
    f_str_5_to_9 = false;
    f_str_concat_substr_2_to_7 = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
    m_bool_and = (( ((false) && (true)) ) ? 1 : 0);
    f_bool_and = true;
    return m_bool_and;
}

std::string expr_ops_parens_t::str_0_to_4() {
    if (f_str_0_to_4)
        return m_str_0_to_4;
    m_str_0_to_4 = std::string("01234");
    f_str_0_to_4 = true;
    return m_str_0_to_4;
}

int32_t expr_ops_parens_t::bool_or() {
    if (f_bool_or)
        return m_bool_or;
    m_bool_or = (( ((!(false)) || (false)) ) ? 1 : 0);
    f_bool_or = true;
    return m_bool_or;
}

double expr_ops_parens_t::f_e() {
    if (f_f_e)
        return m_f_e;
    m_f_e = 2.72;
    f_f_e = true;
    return m_f_e;
}

int32_t expr_ops_parens_t::f_sum_to_int() {
    if (f_f_sum_to_int)
        return m_f_sum_to_int;
    m_f_sum_to_int = static_cast<int>((f_2pi() + f_e()));
    f_f_sum_to_int = true;
    return m_f_sum_to_int;
}

double expr_ops_parens_t::f_2pi() {
    if (f_f_2pi)
        return m_f_2pi;
    m_f_2pi = 6.28;
    f_f_2pi = true;
    return m_f_2pi;
}

std::string expr_ops_parens_t::str_concat_rev() {
    if (f_str_concat_rev)
        return m_str_concat_rev;
    m_str_concat_rev = kaitai::kstream::reverse(str_0_to_4() + str_5_to_9());
    f_str_concat_rev = true;
    return m_str_concat_rev;
}

int32_t expr_ops_parens_t::i_m13() {
    if (f_i_m13)
        return m_i_m13;
    m_i_m13 = -13;
    f_i_m13 = true;
    return m_i_m13;
}

int32_t expr_ops_parens_t::str_concat_len() {
    if (f_str_concat_len)
        return m_str_concat_len;
    m_str_concat_len = str_0_to_4() + str_5_to_9().length();
    f_str_concat_len = true;
    return m_str_concat_len;
}

int32_t expr_ops_parens_t::str_concat_to_i() {
    if (f_str_concat_to_i)
        return m_str_concat_to_i;
    m_str_concat_to_i = kaitai::kstream::string_to_int(str_0_to_4() + str_5_to_9());
    f_str_concat_to_i = true;
    return m_str_concat_to_i;
}

int8_t expr_ops_parens_t::i_42() {
    if (f_i_42)
        return m_i_42;
    m_i_42 = 42;
    f_i_42 = true;
    return m_i_42;
}

std::string expr_ops_parens_t::i_sum_to_str() {
    if (f_i_sum_to_str)
        return m_i_sum_to_str;
    m_i_sum_to_str = kaitai::kstream::to_string((i_42() + i_m13()));
    f_i_sum_to_str = true;
    return m_i_sum_to_str;
}

int32_t expr_ops_parens_t::bool_eq() {
    if (f_bool_eq)
        return m_bool_eq;
    m_bool_eq = ((false == true) ? 1 : 0);
    f_bool_eq = true;
    return m_bool_eq;
}

std::string expr_ops_parens_t::str_5_to_9() {
    if (f_str_5_to_9)
        return m_str_5_to_9;
    m_str_5_to_9 = std::string("56789");
    f_str_5_to_9 = true;
    return m_str_5_to_9;
}

std::string expr_ops_parens_t::str_concat_substr_2_to_7() {
    if (f_str_concat_substr_2_to_7)
        return m_str_concat_substr_2_to_7;
    m_str_concat_substr_2_to_7 = str_0_to_4() + str_5_to_9().substr(2, (7) - (2));
    f_str_concat_substr_2_to_7 = true;
    return m_str_concat_substr_2_to_7;
}
