#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class enum_import_literals_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include "enum_0.h"
#include "enum_deep.h"

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
    bool pet_1_eq();
    int32_t pet_1_to_i();
    enum_deep_t::container1_t::container2_t::animal_t pet_2();
    enum_import_literals_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_pet_1_eq;
    bool m_pet_1_eq;
    bool f_pet_1_to_i;
    int32_t m_pet_1_to_i;
    bool f_pet_2;
    enum_deep_t::container1_t::container2_t::animal_t m_pet_2;
    enum_import_literals_t* m__root;
    kaitai::kstruct* m__parent;
};
