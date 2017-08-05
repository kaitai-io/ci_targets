#ifndef ENUM_FANCY_H_
#define ENUM_FANCY_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <kaitai/kaitaistream.h>

#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class enum_fancy_t : public kaitai::kstruct {

public:

    enum animal_t {
        ANIMAL_DOG = 4,
        ANIMAL_CAT = 7,
        ANIMAL_CHICKEN = 12
    };

    enum_fancy_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, enum_fancy_t* p__root = 0);
    void _read();
    ~enum_fancy_t();

private:
    animal_t m_pet_1;
    animal_t m_pet_2;
    enum_fancy_t* m__root;
    kaitai::kstruct* m__parent;

public:
    animal_t pet_1() const { return m_pet_1; }
    animal_t pet_2() const { return m_pet_2; }
    enum_fancy_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // ENUM_FANCY_H_
