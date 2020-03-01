#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class defaultBigEndian_t : public kaitai::kstruct {

public:

    defaultBigEndian_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, defaultBigEndian_t* p__root = nullptr);

private:
    void _read();

public:
    ~defaultBigEndian_t();

private:
    uint32_t m_one;
    defaultBigEndian_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint32_t one() const { return m_one; }
    defaultBigEndian_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
