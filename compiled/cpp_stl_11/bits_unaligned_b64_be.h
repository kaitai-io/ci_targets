#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class bits_unaligned_b64_be_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class bits_unaligned_b64_be_t : public kaitai::kstruct {

public:

    bits_unaligned_b64_be_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, bits_unaligned_b64_be_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~bits_unaligned_b64_be_t();

private:
    bool m_a;
    uint64_t m_b;
    uint64_t m_c;
    bits_unaligned_b64_be_t* m__root;
    kaitai::kstruct* m__parent;

public:
    bool a() const { return m_a; }
    uint64_t b() const { return m_b; }
    uint64_t c() const { return m_c; }
    bits_unaligned_b64_be_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
