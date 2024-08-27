#ifndef VALID_FAIL_IN_ENUM_H_
#define VALID_FAIL_IN_ENUM_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class valid_fail_in_enum_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <set>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class valid_fail_in_enum_t : public kaitai::kstruct {

public:

    enum animal_t {
        ANIMAL_DOG = 4,
        ANIMAL_CHICKEN = 12
    };
    static bool _is_defined_animal_t(animal_t v);

private:
    static const std::set<animal_t> _values_animal_t;
    static std::set<animal_t> _build_values_animal_t();

public:

    valid_fail_in_enum_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, valid_fail_in_enum_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~valid_fail_in_enum_t();

private:
    animal_t m_foo;
    valid_fail_in_enum_t* m__root;
    kaitai::kstruct* m__parent;

public:
    animal_t foo() const { return m_foo; }
    valid_fail_in_enum_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // VALID_FAIL_IN_ENUM_H_
