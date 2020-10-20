#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class bits_signed_b32_le_t : public kaitai::kstruct {

public:

    bits_signed_b32_le_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, bits_signed_b32_le_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~bits_signed_b32_le_t();

private:
    uint64_t m_a_num;
    bool m_a_bit;
    uint64_t m_b_num;
    bool m_b_bit;
    bits_signed_b32_le_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint64_t a_num() const { return m_a_num; }
    bool a_bit() const { return m_a_bit; }
    uint64_t b_num() const { return m_b_num; }
    bool b_bit() const { return m_b_bit; }
    bits_signed_b32_le_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
