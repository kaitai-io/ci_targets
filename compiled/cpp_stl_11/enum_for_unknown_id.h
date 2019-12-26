#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class enum_for_unknown_id_t : public kaitai::kstruct {

public:

    enum animal_t {
        ANIMAL_DOG = 4,
        ANIMAL_CAT = 7,
        ANIMAL_CHICKEN = 12
    };

    enum_for_unknown_id_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, enum_for_unknown_id_t* p__root = nullptr);

private:
    void _read();

public:
    ~enum_for_unknown_id_t();

private:
    animal_t m_one;
    enum_for_unknown_id_t* m__root;
    kaitai::kstruct* m__parent;

public:
    animal_t one() const { return m_one; }
    enum_for_unknown_id_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
