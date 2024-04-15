#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class debug_0_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class debug_0_t : public kaitai::kstruct {

public:

    debug_0_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, debug_0_t* p__root = nullptr);
    void _read();

private:
    void _clean_up();

public:
    ~debug_0_t();

private:
    uint8_t m_one;
    std::unique_ptr<std::vector<uint8_t>> m_array_of_ints;
    uint8_t m__unnamed2;
    debug_0_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t one() const { return m_one; }
    std::vector<uint8_t>* array_of_ints() const { return m_array_of_ints.get(); }
    uint8_t _unnamed2() const { return m__unnamed2; }
    debug_0_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
