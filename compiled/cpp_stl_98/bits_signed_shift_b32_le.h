#ifndef BITS_SIGNED_SHIFT_B32_LE_H_
#define BITS_SIGNED_SHIFT_B32_LE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class bits_signed_shift_b32_le_t : public kaitai::kstruct {

public:

    bits_signed_shift_b32_le_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, bits_signed_shift_b32_le_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~bits_signed_shift_b32_le_t();

private:
    uint64_t m_a;
    uint64_t m_b;
    bits_signed_shift_b32_le_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint64_t a() const { return m_a; }
    uint64_t b() const { return m_b; }
    bits_signed_shift_b32_le_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // BITS_SIGNED_SHIFT_B32_LE_H_
