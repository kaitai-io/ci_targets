#ifndef ENUM_TO_I_CLASS_BORDER_1_H_
#define ENUM_TO_I_CLASS_BORDER_1_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include "enum_to_i_class_border_2.h"

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif
class enumToIClassBorder2_t;

class enumToIClassBorder1_t : public kaitai::kstruct {

public:

    enum animal_t {
        ANIMAL_DOG = 4,
        ANIMAL_CAT = 7,
        ANIMAL_CHICKEN = 12
    };

    enumToIClassBorder1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, enumToIClassBorder1_t* p__root = 0);

private:
    void _read();

public:
    ~enumToIClassBorder1_t();

private:
    bool f_some_dog;
    animal_t m_some_dog;

public:
    animal_t some_dog();

private:
    bool f_checker;
    enumToIClassBorder2_t* m_checker;

public:
    enumToIClassBorder2_t* checker();

private:
    animal_t m_pet_1;
    animal_t m_pet_2;
    enumToIClassBorder1_t* m__root;
    kaitai::kstruct* m__parent;

public:
    animal_t pet_1() const { return m_pet_1; }
    animal_t pet_2() const { return m_pet_2; }
    enumToIClassBorder1_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // ENUM_TO_I_CLASS_BORDER_1_H_
