#ifndef PARAMS_DEF_ENUM_IMPORTED_H_
#define PARAMS_DEF_ENUM_IMPORTED_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class params_def_enum_imported_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include "enum_deep.h"
#include "enum_0.h"

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class params_def_enum_imported_t : public kaitai::kstruct {

public:

    params_def_enum_imported_t(enum_0_t::animal_t p_pet_1_param, enum_deep_t::container1_t::container2_t::animal_t p_pet_2_param, kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, params_def_enum_imported_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~params_def_enum_imported_t();

private:
    enum_0_t::animal_t m_pet_1_param;
    enum_deep_t::container1_t::container2_t::animal_t m_pet_2_param;
    params_def_enum_imported_t* m__root;
    kaitai::kstruct* m__parent;

public:
    enum_0_t::animal_t pet_1_param() const { return m_pet_1_param; }
    enum_deep_t::container1_t::container2_t::animal_t pet_2_param() const { return m_pet_2_param; }
    params_def_enum_imported_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // PARAMS_DEF_ENUM_IMPORTED_H_
