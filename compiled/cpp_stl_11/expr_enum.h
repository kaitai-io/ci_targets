#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class exprEnum_t : public kaitai::kstruct {

public:

    enum animal_t {
        ANIMAL_DOG = 4,
        ANIMAL_CAT = 7,
        ANIMAL_CHICKEN = 12,
        ANIMAL_BOOM = 102
    };

    exprEnum_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, exprEnum_t* p__root = nullptr);

private:
    void _read();

public:
    ~exprEnum_t();

private:
    bool f_const_dog;
    animal_t m_const_dog;

public:
    animal_t const_dog();

private:
    bool f_derived_boom;
    animal_t m_derived_boom;

public:
    animal_t derived_boom();

private:
    bool f_derived_dog;
    animal_t m_derived_dog;

public:
    animal_t derived_dog();

private:
    uint8_t m_one;
    exprEnum_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t one() const { return m_one; }
    exprEnum_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
