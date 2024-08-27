#ifndef ENUM_INT_RANGE_U_H_
#define ENUM_INT_RANGE_U_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class enum_int_range_u_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <set>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class enum_int_range_u_t : public kaitai::kstruct {

public:

    enum constants_t {
        CONSTANTS_ZERO = 0,
        CONSTANTS_INT_MAX = 4294967295UL
    };
    static bool _is_defined_constants_t(constants_t v);

private:
    static const std::set<constants_t> _values_constants_t;
    static std::set<constants_t> _build_values_constants_t();

public:

    enum_int_range_u_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, enum_int_range_u_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~enum_int_range_u_t();

private:
    constants_t m_f1;
    constants_t m_f2;
    enum_int_range_u_t* m__root;
    kaitai::kstruct* m__parent;

public:
    constants_t f1() const { return m_f1; }
    constants_t f2() const { return m_f2; }
    enum_int_range_u_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // ENUM_INT_RANGE_U_H_
