#ifndef EXPR_3_H_
#define EXPR_3_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class expr_3_t;

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
    std::string four();
    bool is_str_eq();
    bool is_str_ge();
    bool is_str_gt();
    bool is_str_le();
    bool is_str_lt();
    bool is_str_lt2();
    bool is_str_ne();
    bool test_not();
    std::string three();
    uint8_t one() const { return m_one; }
    std::string two() const { return m_two; }
    expr_3_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_four;
    std::string m_four;
    bool f_is_str_eq;
    bool m_is_str_eq;
    bool f_is_str_ge;
    bool m_is_str_ge;
    bool f_is_str_gt;
    bool m_is_str_gt;
    bool f_is_str_le;
    bool m_is_str_le;
    bool f_is_str_lt;
    bool m_is_str_lt;
    bool f_is_str_lt2;
    bool m_is_str_lt2;
    bool f_is_str_ne;
    bool m_is_str_ne;
    bool f_test_not;
    bool m_test_not;
    bool f_three;
    std::string m_three;
    uint8_t m_one;
    std::string m_two;
    expr_3_t* m__root;
    kaitai::kstruct* m__parent;
};

#endif  // EXPR_3_H_
