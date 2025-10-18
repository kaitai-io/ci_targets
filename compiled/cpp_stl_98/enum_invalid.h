#ifndef ENUM_INVALID_H_
#define ENUM_INVALID_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class enum_invalid_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <set>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class enum_invalid_t : public kaitai::kstruct {

public:

    enum animal_t {
        ANIMAL_DOG = 102,
        ANIMAL_CAT = 124
    };
    static bool _is_defined_animal_t(animal_t v);

private:
    static const std::set<animal_t> _values_animal_t;
    static std::set<animal_t> _build_values_animal_t();

public:

    enum_invalid_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, enum_invalid_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~enum_invalid_t();
    animal_t pet_1() const { return m_pet_1; }
    animal_t pet_2() const { return m_pet_2; }
    enum_invalid_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    animal_t m_pet_1;
    animal_t m_pet_2;
    enum_invalid_t* m__root;
    kaitai::kstruct* m__parent;
};

#endif  // ENUM_INVALID_H_
