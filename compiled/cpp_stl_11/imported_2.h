#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"

#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class imported_2_t : public kaitai::kstruct {

public:

    imported_2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, imported_2_t* p__root = 0);

private:
    void _read();

public:
    ~imported_2_t();

private:
    uint8_t m_one;
    imported_2_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t one() const { return m_one; }
    imported_2_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
