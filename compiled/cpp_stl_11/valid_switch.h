#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class validSwitch_t : public kaitai::kstruct {

public:

    validSwitch_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, validSwitch_t* p__root = nullptr);

private:
    void _read();

public:
    ~validSwitch_t();

private:
    uint8_t m_a;
    int32_t m_b;
    validSwitch_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t a() const { return m_a; }
    int32_t b() const { return m_b; }
    validSwitch_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
