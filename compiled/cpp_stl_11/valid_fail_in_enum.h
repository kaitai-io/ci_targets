#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class valid_fail_in_enum_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <set>
#include <type_traits>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class valid_fail_in_enum_t : public kaitai::kstruct {

public:

    enum animal_t {
        ANIMAL_DOG = 4,
        ANIMAL_CHICKEN = 12
    };
    static const std::set<std::underlying_type<animal_t>::type> _values_animal_t;

    valid_fail_in_enum_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, valid_fail_in_enum_t* p__root = nullptr);

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
