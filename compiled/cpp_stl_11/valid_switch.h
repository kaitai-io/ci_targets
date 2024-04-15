#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class valid_switch_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class valid_switch_t : public kaitai::kstruct {

public:

    valid_switch_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, valid_switch_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~valid_switch_t();

private:
    uint8_t m_a;
    int32_t m_b;
    valid_switch_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t a() const { return m_a; }
    int32_t b() const { return m_b; }
    valid_switch_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
