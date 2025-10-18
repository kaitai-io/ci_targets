#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class expr_bytes_ops_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class expr_bytes_ops_t : public kaitai::kstruct {

public:

    expr_bytes_ops_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, expr_bytes_ops_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~expr_bytes_ops_t();
    uint8_t one_first();
    uint8_t one_last();
    uint8_t one_max();
    uint8_t one_mid();
    uint8_t one_min();
    int32_t one_size();
    std::string two();
    uint8_t two_first();
    uint8_t two_last();
    uint8_t two_max();
    uint8_t two_mid();
    uint8_t two_min();
    int32_t two_size();
    std::string one() const { return m_one; }
    expr_bytes_ops_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_one_first;
    uint8_t m_one_first;
    bool f_one_last;
    uint8_t m_one_last;
    bool f_one_max;
    uint8_t m_one_max;
    bool f_one_mid;
    uint8_t m_one_mid;
    bool f_one_min;
    uint8_t m_one_min;
    bool f_one_size;
    int32_t m_one_size;
    bool f_two;
    std::string m_two;
    bool f_two_first;
    uint8_t m_two_first;
    bool f_two_last;
    uint8_t m_two_last;
    bool f_two_max;
    uint8_t m_two_max;
    bool f_two_mid;
    uint8_t m_two_mid;
    bool f_two_min;
    uint8_t m_two_min;
    bool f_two_size;
    int32_t m_two_size;
    std::string m_one;
    expr_bytes_ops_t* m__root;
    kaitai::kstruct* m__parent;
};
