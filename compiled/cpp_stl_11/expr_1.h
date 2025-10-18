#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class expr_1_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class expr_1_t : public kaitai::kstruct {

public:

    expr_1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, expr_1_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~expr_1_t();
    int32_t len_of_1_mod();
    int32_t str1_len();
    uint16_t len_of_1() const { return m_len_of_1; }
    std::string str1() const { return m_str1; }
    expr_1_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_len_of_1_mod;
    int32_t m_len_of_1_mod;
    bool f_str1_len;
    int32_t m_str1_len;
    uint16_t m_len_of_1;
    std::string m_str1;
    expr_1_t* m__root;
    kaitai::kstruct* m__parent;
};
