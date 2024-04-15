#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class enum_long_range_u_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class enum_long_range_u_t : public kaitai::kstruct {

public:

    enum constants_t {
        CONSTANTS_ZERO = 0,
        CONSTANTS_INT_MAX = 4294967295UL,
        CONSTANTS_INT_OVER_MAX = 4294967296LL,
        CONSTANTS_LONG_MAX = 9223372036854775807LL
    };

    enum_long_range_u_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, enum_long_range_u_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~enum_long_range_u_t();

private:
    constants_t m_f1;
    constants_t m_f2;
    constants_t m_f3;
    constants_t m_f4;
    enum_long_range_u_t* m__root;
    kaitai::kstruct* m__parent;

public:
    constants_t f1() const { return m_f1; }
    constants_t f2() const { return m_f2; }
    constants_t f3() const { return m_f3; }
    constants_t f4() const { return m_f4; }
    enum_long_range_u_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
