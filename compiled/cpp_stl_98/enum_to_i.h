#ifndef ENUM_TO_I_H_
#define ENUM_TO_I_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class enumToI_t : public kaitai::kstruct {

public:

    enum animal_t {
        ANIMAL_DOG = 4,
        ANIMAL_CAT = 7,
        ANIMAL_CHICKEN = 12
    };

    enumToI_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, enumToI_t* p__root = 0);

private:
    void _read();

public:
    ~enumToI_t();

private:
    bool f_pet_1_i;
    int32_t m_pet_1_i;

public:
    int32_t pet_1_i();

private:
    bool f_pet_1_mod;
    int32_t m_pet_1_mod;

public:
    int32_t pet_1_mod();

private:
    bool f_one_lt_two;
    bool m_one_lt_two;

public:
    bool one_lt_two();

private:
    animal_t m_pet_1;
    animal_t m_pet_2;
    enumToI_t* m__root;
    kaitai::kstruct* m__parent;

public:
    animal_t pet_1() const { return m_pet_1; }
    animal_t pet_2() const { return m_pet_2; }
    enumToI_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // ENUM_TO_I_H_
