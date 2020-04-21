#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class default_big_bit_endian_implicit_t : public kaitai::kstruct {

public:

    default_big_bit_endian_implicit_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, default_big_bit_endian_implicit_t* p__root = nullptr);

private:
    void _read();

public:
    ~default_big_bit_endian_implicit_t();

private:
    uint64_t m_one;
    default_big_bit_endian_implicit_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint64_t one() const { return m_one; }
    default_big_bit_endian_implicit_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
