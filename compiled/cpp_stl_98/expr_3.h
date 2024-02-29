#ifndef EXPR_3_H_
#define EXPR_3_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class expr_3_t : public kaitai::kstruct {

public:

    expr_3_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, expr_3_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~expr_3_t();

private:
    bool f_four;
    std::string m_four;

public:
    std::string four();

private:
    bool f_is_str_eq;
    bool m_is_str_eq;

public:
    bool is_str_eq();

private:
    bool f_is_str_ge;
    bool m_is_str_ge;

public:
    bool is_str_ge();

private:
    bool f_is_str_gt;
    bool m_is_str_gt;

public:
    bool is_str_gt();

private:
    bool f_is_str_le;
    bool m_is_str_le;

public:
    bool is_str_le();

private:
    bool f_is_str_lt;
    bool m_is_str_lt;

public:
    bool is_str_lt();

private:
    bool f_is_str_lt2;
    bool m_is_str_lt2;

public:
    bool is_str_lt2();

private:
    bool f_is_str_ne;
    bool m_is_str_ne;

public:
    bool is_str_ne();

private:
    bool f_test_not;
    bool m_test_not;

public:
    bool test_not();

private:
    bool f_three;
    std::string m_three;

public:
    std::string three();

private:
    uint8_t m_one;
    std::string m_two;
    expr_3_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t one() const { return m_one; }
    std::string two() const { return m_two; }
    expr_3_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // EXPR_3_H_
