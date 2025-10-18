#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class enum_to_i_invalid_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <set>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class enum_to_i_invalid_t : public kaitai::kstruct {

public:

    enum animal_t {
        ANIMAL_DOG = 102,
        ANIMAL_CAT = 124
    };
    static bool _is_defined_animal_t(animal_t v);

private:
    static const std::set<animal_t> _values_animal_t;

public:

    enum_to_i_invalid_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, enum_to_i_invalid_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~enum_to_i_invalid_t();
    bool one_lt_two();
    bool pet_2_eq_int_f();
    bool pet_2_eq_int_t();
    int32_t pet_2_i();
    std::string pet_2_i_to_s();
    int32_t pet_2_mod();
    animal_t pet_1() const { return m_pet_1; }
    animal_t pet_2() const { return m_pet_2; }
    enum_to_i_invalid_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_one_lt_two;
    bool m_one_lt_two;
    bool f_pet_2_eq_int_f;
    bool m_pet_2_eq_int_f;
    bool f_pet_2_eq_int_t;
    bool m_pet_2_eq_int_t;
    bool f_pet_2_i;
    int32_t m_pet_2_i;
    bool f_pet_2_i_to_s;
    std::string m_pet_2_i_to_s;
    bool f_pet_2_mod;
    int32_t m_pet_2_mod;
    animal_t m_pet_1;
    animal_t m_pet_2;
    enum_to_i_invalid_t* m__root;
    kaitai::kstruct* m__parent;
};
