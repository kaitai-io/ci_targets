#ifndef ENUM_INVALID_H_
#define ENUM_INVALID_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class enum_invalid_t : public kaitai::kstruct {

public:

    enum animal_t {
        ANIMAL_DOG = 102,
        ANIMAL_CAT = 124
    };

    enum_invalid_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, enum_invalid_t* p__root = 0);

private:
    void _read();

public:
    ~enum_invalid_t();

private:
    animal_t m_pet_1;
    animal_t m_pet_2;
    enum_invalid_t* m__root;
    kaitai::kstruct* m__parent;

public:
    animal_t pet_1() const { return m_pet_1; }
    animal_t pet_2() const { return m_pet_2; }
    enum_invalid_t* _root() const { return m__root; }
    virtual kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // ENUM_INVALID_H_
