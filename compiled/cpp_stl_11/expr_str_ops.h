#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class expr_str_ops_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class expr_str_ops_t : public kaitai::kstruct {

public:

    expr_str_ops_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, expr_str_ops_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~expr_str_ops_t();
    int32_t one_len();
    std::string one_rev();
    std::string one_substr_0_to_0();
    std::string one_substr_0_to_3();
    std::string one_substr_2_to_5();
    std::string one_substr_3_to_3();
    int32_t to_i_attr();
    int32_t to_i_r10();
    int32_t to_i_r16();
    int32_t to_i_r2();
    int32_t to_i_r8();
    std::string two();
    int32_t two_len();
    std::string two_rev();
    std::string two_substr_0_to_10();
    std::string two_substr_0_to_7();
    std::string two_substr_4_to_10();
    std::string one() const { return m_one; }
    expr_str_ops_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_one_len;
    int32_t m_one_len;
    bool f_one_rev;
    std::string m_one_rev;
    bool f_one_substr_0_to_0;
    std::string m_one_substr_0_to_0;
    bool f_one_substr_0_to_3;
    std::string m_one_substr_0_to_3;
    bool f_one_substr_2_to_5;
    std::string m_one_substr_2_to_5;
    bool f_one_substr_3_to_3;
    std::string m_one_substr_3_to_3;
    bool f_to_i_attr;
    int32_t m_to_i_attr;
    bool f_to_i_r10;
    int32_t m_to_i_r10;
    bool f_to_i_r16;
    int32_t m_to_i_r16;
    bool f_to_i_r2;
    int32_t m_to_i_r2;
    bool f_to_i_r8;
    int32_t m_to_i_r8;
    bool f_two;
    std::string m_two;
    bool f_two_len;
    int32_t m_two_len;
    bool f_two_rev;
    std::string m_two_rev;
    bool f_two_substr_0_to_10;
    std::string m_two_substr_0_to_10;
    bool f_two_substr_0_to_7;
    std::string m_two_substr_0_to_7;
    bool f_two_substr_4_to_10;
    std::string m_two_substr_4_to_10;
    std::string m_one;
    expr_str_ops_t* m__root;
    kaitai::kstruct* m__parent;
};
