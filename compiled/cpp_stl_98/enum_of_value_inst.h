#ifndef ENUM_OF_VALUE_INST_H_
#define ENUM_OF_VALUE_INST_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class enum_of_value_inst_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <set>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class enum_of_value_inst_t : public kaitai::kstruct {

public:

    enum animal_t {
        ANIMAL_DOG = 4,
        ANIMAL_CAT = 7,
        ANIMAL_CHICKEN = 12
    };
    static bool _is_defined_animal_t(animal_t v);

private:
    static const std::set<animal_t> _values_animal_t;
    static std::set<animal_t> _build_values_animal_t();

public:

    enum_of_value_inst_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, enum_of_value_inst_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~enum_of_value_inst_t();

private:
    bool f_pet_3;
    animal_t m_pet_3;

public:
    animal_t pet_3();

private:
    bool f_pet_4;
    animal_t m_pet_4;

public:
    animal_t pet_4();

private:
    animal_t m_pet_1;
    animal_t m_pet_2;
    enum_of_value_inst_t* m__root;
    kaitai::kstruct* m__parent;

public:
    animal_t pet_1() const { return m_pet_1; }
    animal_t pet_2() const { return m_pet_2; }
    enum_of_value_inst_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // ENUM_OF_VALUE_INST_H_
