#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class bitsEnum_t : public kaitai::kstruct {

public:

    enum animal_t {
        ANIMAL_CAT = 0,
        ANIMAL_DOG = 1,
        ANIMAL_HORSE = 4,
        ANIMAL_PLATYPUS = 5
    };

    bitsEnum_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, bitsEnum_t* p__root = nullptr);

private:
    void _read();

public:
    ~bitsEnum_t();

private:
    animal_t m_one;
    animal_t m_two;
    animal_t m_three;
    bitsEnum_t* m__root;
    kaitai::kstruct* m__parent;

public:
    animal_t one() const { return m_one; }
    animal_t two() const { return m_two; }
    animal_t three() const { return m_three; }
    bitsEnum_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
