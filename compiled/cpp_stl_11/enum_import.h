#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include "enum_0.h"
#include "enum_deep.h"

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class enumImport_t : public kaitai::kstruct {

public:

    enumImport_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, enumImport_t* p__root = nullptr);

private:
    void _read();

public:
    ~enumImport_t();

private:
    enum0_t::animal_t m_pet_1;
    enumDeep_t::container1_t::container2_t::animal_t m_pet_2;
    enumImport_t* m__root;
    kaitai::kstruct* m__parent;

public:
    enum0_t::animal_t pet_1() const { return m_pet_1; }
    enumDeep_t::container1_t::container2_t::animal_t pet_2() const { return m_pet_2; }
    enumImport_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
