#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"

#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif
class params_def_t;

class opaque_with_param_t : public kaitai::kstruct {

public:

    opaque_with_param_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, opaque_with_param_t* p__root = 0);

private:
    void _read();

public:
    ~opaque_with_param_t();

private:
    params_def_t* m_one;
    opaque_with_param_t* m__root;
    kaitai::kstruct* m__parent;

public:
    params_def_t* one() const { return m_one; }
    opaque_with_param_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
