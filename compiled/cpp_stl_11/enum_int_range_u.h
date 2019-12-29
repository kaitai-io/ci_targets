#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class enum_int_range_u_t : public kaitai::kstruct {

public:

    enum constants_t {
        CONSTANTS_ZERO = 0,
        CONSTANTS_INT_MAX = 4294967295
    };

    enum_int_range_u_t(kaitai::kstream* p__io, std::unique_ptr<kaitai::kstruct> p__parent = nullptr, enum_int_range_u_t* p__root = nullptr);

private:
    void _read();

public:
    ~enum_int_range_u_t();

private:
    constants_t m_f1;
    constants_t m_f2;
    enum_int_range_u_t* m__root;
    std::unique_ptr<kaitai::kstruct> m__parent;

public:
    constants_t f1() const { return m_f1; }
    constants_t f2() const { return m_f2; }
    enum_int_range_u_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent.get(); }
};
