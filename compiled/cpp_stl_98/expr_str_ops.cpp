// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_str_ops.h"

expr_str_ops_t::expr_str_ops_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_str_ops_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_one_len = false;
    f_one_rev = false;
    f_one_substr_0_to_3 = false;
    f_one_substr_2_to_5 = false;
    f_one_substr_3_to_3 = false;
    f_to_i_attr = false;
    f_to_i_r10 = false;
    f_to_i_r16 = false;
    f_to_i_r2 = false;
    f_to_i_r8 = false;
    f_two = false;
    f_two_len = false;
    f_two_rev = false;
    f_two_substr_0_to_10 = false;
    f_two_substr_0_to_7 = false;
    f_two_substr_4_to_10 = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void expr_str_ops_t::_read() {
    m_one = kaitai::kstream::bytes_to_str(m__io->read_bytes(5), "ASCII");
}

expr_str_ops_t::~expr_str_ops_t() {
    _clean_up();
}

void expr_str_ops_t::_clean_up() {
}

int32_t expr_str_ops_t::one_len() {
    if (f_one_len)
        return m_one_len;
    m_one_len = one().length();
    f_one_len = true;
    return m_one_len;
}

std::string expr_str_ops_t::one_rev() {
    if (f_one_rev)
        return m_one_rev;
    m_one_rev = kaitai::kstream::reverse(one());
    f_one_rev = true;
    return m_one_rev;
}

std::string expr_str_ops_t::one_substr_0_to_3() {
    if (f_one_substr_0_to_3)
        return m_one_substr_0_to_3;
    m_one_substr_0_to_3 = one().substr(0, 3 - 0);
    f_one_substr_0_to_3 = true;
    return m_one_substr_0_to_3;
}

std::string expr_str_ops_t::one_substr_2_to_5() {
    if (f_one_substr_2_to_5)
        return m_one_substr_2_to_5;
    m_one_substr_2_to_5 = one().substr(2, 5 - 2);
    f_one_substr_2_to_5 = true;
    return m_one_substr_2_to_5;
}

std::string expr_str_ops_t::one_substr_3_to_3() {
    if (f_one_substr_3_to_3)
        return m_one_substr_3_to_3;
    m_one_substr_3_to_3 = one().substr(3, 3 - 3);
    f_one_substr_3_to_3 = true;
    return m_one_substr_3_to_3;
}

int32_t expr_str_ops_t::to_i_attr() {
    if (f_to_i_attr)
        return m_to_i_attr;
    m_to_i_attr = kaitai::kstream::string_to_int(std::string("9173"));
    f_to_i_attr = true;
    return m_to_i_attr;
}

int32_t expr_str_ops_t::to_i_r10() {
    if (f_to_i_r10)
        return m_to_i_r10;
    m_to_i_r10 = kaitai::kstream::string_to_int(std::string("-072"));
    f_to_i_r10 = true;
    return m_to_i_r10;
}

int32_t expr_str_ops_t::to_i_r16() {
    if (f_to_i_r16)
        return m_to_i_r16;
    m_to_i_r16 = kaitai::kstream::string_to_int(std::string("47cf"), 16);
    f_to_i_r16 = true;
    return m_to_i_r16;
}

int32_t expr_str_ops_t::to_i_r2() {
    if (f_to_i_r2)
        return m_to_i_r2;
    m_to_i_r2 = kaitai::kstream::string_to_int(std::string("1010110"), 2);
    f_to_i_r2 = true;
    return m_to_i_r2;
}

int32_t expr_str_ops_t::to_i_r8() {
    if (f_to_i_r8)
        return m_to_i_r8;
    m_to_i_r8 = kaitai::kstream::string_to_int(std::string("721"), 8);
    f_to_i_r8 = true;
    return m_to_i_r8;
}

std::string expr_str_ops_t::two() {
    if (f_two)
        return m_two;
    m_two = std::string("0123456789");
    f_two = true;
    return m_two;
}

int32_t expr_str_ops_t::two_len() {
    if (f_two_len)
        return m_two_len;
    m_two_len = two().length();
    f_two_len = true;
    return m_two_len;
}

std::string expr_str_ops_t::two_rev() {
    if (f_two_rev)
        return m_two_rev;
    m_two_rev = kaitai::kstream::reverse(two());
    f_two_rev = true;
    return m_two_rev;
}

std::string expr_str_ops_t::two_substr_0_to_10() {
    if (f_two_substr_0_to_10)
        return m_two_substr_0_to_10;
    m_two_substr_0_to_10 = two().substr(0, 10 - 0);
    f_two_substr_0_to_10 = true;
    return m_two_substr_0_to_10;
}

std::string expr_str_ops_t::two_substr_0_to_7() {
    if (f_two_substr_0_to_7)
        return m_two_substr_0_to_7;
    m_two_substr_0_to_7 = two().substr(0, 7 - 0);
    f_two_substr_0_to_7 = true;
    return m_two_substr_0_to_7;
}

std::string expr_str_ops_t::two_substr_4_to_10() {
    if (f_two_substr_4_to_10)
        return m_two_substr_4_to_10;
    m_two_substr_4_to_10 = two().substr(4, 10 - 4);
    f_two_substr_4_to_10 = true;
    return m_two_substr_4_to_10;
}
