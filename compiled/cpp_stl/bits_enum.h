#ifndef BITS_ENUM_H_
#define BITS_ENUM_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <kaitai/kaitaistream.h>

#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class bits_enum_t : public kaitai::kstruct {

public:

    enum animal_t {
        ANIMAL_CAT = 0,
        ANIMAL_DOG = 1,
        ANIMAL_HORSE = 4,
        ANIMAL_PLATYPUS = 5
    };

    bits_enum_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, bits_enum_t* p__root = 0);

private:
    void _read();

public:
    ~bits_enum_t();

private:
    animal_t m_one;
    animal_t m_two;
    animal_t m_three;
    bits_enum_t* m__root;
    kaitai::kstruct* m__parent;

public:
    animal_t one() const { return m_one; }
    animal_t two() const { return m_two; }
    animal_t three() const { return m_three; }
    bits_enum_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // BITS_ENUM_H_
