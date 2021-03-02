#ifndef EXPR_STR_OPS_H_
#define EXPR_STR_OPS_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class expr_str_ops_t : public kaitai::kstruct {

public:

    expr_str_ops_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, expr_str_ops_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~expr_str_ops_t();

private:
    bool f_one_substr_3_to_3;
    std::string m_one_substr_3_to_3;

public:
    std::string one_substr_3_to_3();

private:
    bool f_to_i_r8;
    int32_t m_to_i_r8;

public:
    int32_t to_i_r8();

private:
    bool f_to_i_r16;
    int32_t m_to_i_r16;

public:
    int32_t to_i_r16();

private:
    bool f_two_substr_0_to_10;
    std::string m_two_substr_0_to_10;

public:
    std::string two_substr_0_to_10();

private:
    bool f_one_len;
    int32_t m_one_len;

public:
    int32_t one_len();

private:
    bool f_two_len;
    int32_t m_two_len;

public:
    int32_t two_len();

private:
    bool f_one_substr_2_to_5;
    std::string m_one_substr_2_to_5;

public:
    std::string one_substr_2_to_5();

private:
    bool f_to_i_r2;
    int32_t m_to_i_r2;

public:
    int32_t to_i_r2();

private:
    bool f_two_rev;
    std::string m_two_rev;

public:
    std::string two_rev();

private:
    bool f_two;
    std::string m_two;

public:
    std::string two();

private:
    bool f_two_substr_4_to_10;
    std::string m_two_substr_4_to_10;

public:
    std::string two_substr_4_to_10();

private:
    bool f_to_i_r10;
    int32_t m_to_i_r10;

public:
    int32_t to_i_r10();

private:
    bool f_two_substr_0_to_7;
    std::string m_two_substr_0_to_7;

public:
    std::string two_substr_0_to_7();

private:
    bool f_to_i_attr;
    int32_t m_to_i_attr;

public:
    int32_t to_i_attr();

private:
    bool f_one_substr_0_to_3;
    std::string m_one_substr_0_to_3;

public:
    std::string one_substr_0_to_3();

private:
    bool f_one_rev;
    std::string m_one_rev;

public:
    std::string one_rev();

private:
    std::string m_one;
    expr_str_ops_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string one() const { return m_one; }
    expr_str_ops_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // EXPR_STR_OPS_H_
