#ifndef ENUM_LONG_RANGE_S_H_
#define ENUM_LONG_RANGE_S_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class enum_long_range_s_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class enum_long_range_s_t : public kaitai::kstruct {

public:

    enum constants_t {
        CONSTANTS_LONG_MIN = -9223372036854775807LL - 1,
        CONSTANTS_INT_BELOW_MIN = -2147483649LL,
        CONSTANTS_INT_MIN = -2147483647 - 1,
        CONSTANTS_ZERO = 0,
        CONSTANTS_INT_MAX = 2147483647,
        CONSTANTS_INT_OVER_MAX = 2147483648UL,
        CONSTANTS_LONG_MAX = 9223372036854775807LL
    };

    enum_long_range_s_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, enum_long_range_s_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~enum_long_range_s_t();

private:
    constants_t m_f1;
    constants_t m_f2;
    constants_t m_f3;
    constants_t m_f4;
    constants_t m_f5;
    constants_t m_f6;
    constants_t m_f7;
    enum_long_range_s_t* m__root;
    kaitai::kstruct* m__parent;

public:
    constants_t f1() const { return m_f1; }
    constants_t f2() const { return m_f2; }
    constants_t f3() const { return m_f3; }
    constants_t f4() const { return m_f4; }
    constants_t f5() const { return m_f5; }
    constants_t f6() const { return m_f6; }
    constants_t f7() const { return m_f7; }
    enum_long_range_s_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // ENUM_LONG_RANGE_S_H_
