#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class cast_to_imported2_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class cast_to_imported2_t : public kaitai::kstruct {

public:

    cast_to_imported2_t(kaitai::kstruct* p_hw_param, kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, cast_to_imported2_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~cast_to_imported2_t();
    hello_world_t* hw();
    kaitai::kstruct* hw_param() const { return m_hw_param; }
    cast_to_imported2_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_hw;
    hello_world_t* m_hw;
    kaitai::kstruct* m_hw_param;
    cast_to_imported2_t* m__root;
    kaitai::kstruct* m__parent;
};
