#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class combine_enum_t : public kaitai::kstruct {

public:

    enum animal_t {
        ANIMAL_PIG = 7,
        ANIMAL_HORSE = 12
    };

    combine_enum_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, combine_enum_t* p__root = nullptr);

private:
    void _read();

public:

private:
    void _clean_up();

public:
    ~combine_enum_t();

private:
    bool f_enum_u4_u2;
    animal_t m_enum_u4_u2;

public:
    animal_t enum_u4_u2();

private:
    animal_t m_enum_u4;
    animal_t m_enum_u2;
    combine_enum_t* m__root;
    kaitai::kstruct* m__parent;

public:
    animal_t enum_u4() const { return m_enum_u4; }
    animal_t enum_u2() const { return m_enum_u2; }
    combine_enum_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
