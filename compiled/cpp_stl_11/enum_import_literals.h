#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class enum_import_literals_t : public kaitai::kstruct {

public:

    enum_import_literals_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, enum_import_literals_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~enum_import_literals_t();

private:
    bool f_pet_1_eq;
    bool m_pet_1_eq;

public:
    bool pet_1_eq();

private:
    bool f_pet_1_to_i;
    int32_t m_pet_1_to_i;

public:
    int32_t pet_1_to_i();

private:
    bool f_pet_2;
    animal_t m_pet_2;

public:
    animal_t pet_2();

private:
    enum_import_literals_t* m__root;
    kaitai::kstruct* m__parent;

public:
    enum_import_literals_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
