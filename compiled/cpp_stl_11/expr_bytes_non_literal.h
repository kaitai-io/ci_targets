#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class expr_bytes_non_literal_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class expr_bytes_non_literal_t : public kaitai::kstruct {

public:

    expr_bytes_non_literal_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, expr_bytes_non_literal_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~expr_bytes_non_literal_t();

private:
    bool f_calc_bytes;
    std::string m_calc_bytes;

public:
    std::string calc_bytes();

private:
    uint8_t m_one;
    uint8_t m_two;
    expr_bytes_non_literal_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t one() const { return m_one; }
    uint8_t two() const { return m_two; }
    expr_bytes_non_literal_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
