#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class expr_bytes_cmp_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class expr_bytes_cmp_t : public kaitai::kstruct {

public:

    expr_bytes_cmp_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, expr_bytes_cmp_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~expr_bytes_cmp_t();
    std::string ack();
    std::string ack2();
    std::string hi_val();
    bool is_eq();
    bool is_ge();
    bool is_gt();
    bool is_gt2();
    bool is_le();
    bool is_lt();
    bool is_lt2();
    bool is_ne();
    std::string one() const { return m_one; }
    std::string two() const { return m_two; }
    expr_bytes_cmp_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_ack;
    std::string m_ack;
    bool f_ack2;
    std::string m_ack2;
    bool f_hi_val;
    std::string m_hi_val;
    bool f_is_eq;
    bool m_is_eq;
    bool f_is_ge;
    bool m_is_ge;
    bool f_is_gt;
    bool m_is_gt;
    bool f_is_gt2;
    bool m_is_gt2;
    bool f_is_le;
    bool m_is_le;
    bool f_is_lt;
    bool m_is_lt;
    bool f_is_lt2;
    bool m_is_lt2;
    bool f_is_ne;
    bool m_is_ne;
    std::string m_one;
    std::string m_two;
    expr_bytes_cmp_t* m__root;
    kaitai::kstruct* m__parent;
};
