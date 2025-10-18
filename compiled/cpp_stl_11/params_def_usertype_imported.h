#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class params_def_usertype_imported_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include "hello_world.h"

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class params_def_usertype_imported_t : public kaitai::kstruct {

public:

    params_def_usertype_imported_t(hello_world_t* p_hw_param, kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, params_def_usertype_imported_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~params_def_usertype_imported_t();
    uint8_t hw_one();
    hello_world_t* hw_param() const { return m_hw_param; }
    params_def_usertype_imported_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_hw_one;
    uint8_t m_hw_one;
    hello_world_t* m_hw_param;
    params_def_usertype_imported_t* m__root;
    kaitai::kstruct* m__parent;
};
