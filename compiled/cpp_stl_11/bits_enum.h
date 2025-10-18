#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class bits_enum_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <set>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class bits_enum_t : public kaitai::kstruct {

public:

    enum animal_t {
        ANIMAL_CAT = 0,
        ANIMAL_DOG = 1,
        ANIMAL_HORSE = 4,
        ANIMAL_PLATYPUS = 5
    };
    static bool _is_defined_animal_t(animal_t v);

private:
    static const std::set<animal_t> _values_animal_t;

public:

    bits_enum_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, bits_enum_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~bits_enum_t();
    animal_t one() const { return m_one; }
    animal_t two() const { return m_two; }
    animal_t three() const { return m_three; }
    bits_enum_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    animal_t m_one;
    animal_t m_two;
    animal_t m_three;
    bits_enum_t* m__root;
    kaitai::kstruct* m__parent;
};
