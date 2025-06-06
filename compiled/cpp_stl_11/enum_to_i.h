#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class enum_to_i_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <set>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class enum_to_i_t : public kaitai::kstruct {

public:

    enum animal_t {
        ANIMAL_DOG = 4,
        ANIMAL_CAT = 7,
        ANIMAL_CHICKEN = 12
    };
    static bool _is_defined_animal_t(animal_t v);

private:
    static const std::set<animal_t> _values_animal_t;

public:

    enum_to_i_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, enum_to_i_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~enum_to_i_t();

private:
    bool f_one_lt_two;
    bool m_one_lt_two;

public:
    bool one_lt_two();

private:
    bool f_pet_1_eq_int;
    bool m_pet_1_eq_int;

public:
    bool pet_1_eq_int();

private:
    bool f_pet_1_i;
    int32_t m_pet_1_i;

public:
    int32_t pet_1_i();

private:
    bool f_pet_1_i_to_s;
    std::string m_pet_1_i_to_s;

public:
    std::string pet_1_i_to_s();

private:
    bool f_pet_1_mod;
    int32_t m_pet_1_mod;

public:
    int32_t pet_1_mod();

private:
    bool f_pet_2_eq_int;
    bool m_pet_2_eq_int;

public:
    bool pet_2_eq_int();

private:
    animal_t m_pet_1;
    animal_t m_pet_2;
    enum_to_i_t* m__root;
    kaitai::kstruct* m__parent;

public:
    animal_t pet_1() const { return m_pet_1; }
    animal_t pet_2() const { return m_pet_2; }
    enum_to_i_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
