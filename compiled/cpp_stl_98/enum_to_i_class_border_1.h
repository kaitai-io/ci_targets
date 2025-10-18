#ifndef ENUM_TO_I_CLASS_BORDER_1_H_
#define ENUM_TO_I_CLASS_BORDER_1_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class enum_to_i_class_border_1_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include "enum_to_i_class_border_2.h"
#include <set>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class enum_to_i_class_border_1_t : public kaitai::kstruct {

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

    enum_to_i_class_border_1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, enum_to_i_class_border_1_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~enum_to_i_class_border_1_t();
    enum_to_i_class_border_2_t* checker();
    animal_t some_dog();
    animal_t pet_1() const { return m_pet_1; }
    animal_t pet_2() const { return m_pet_2; }
    enum_to_i_class_border_1_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_checker;
    enum_to_i_class_border_2_t* m_checker;
    bool f_some_dog;
    animal_t m_some_dog;
    animal_t m_pet_1;
    animal_t m_pet_2;
    enum_to_i_class_border_1_t* m__root;
    kaitai::kstruct* m__parent;
};

#endif  // ENUM_TO_I_CLASS_BORDER_1_H_
