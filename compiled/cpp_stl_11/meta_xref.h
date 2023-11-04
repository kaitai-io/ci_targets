#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class meta_xref_t : public kaitai::kstruct {

public:

    meta_xref_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, meta_xref_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~meta_xref_t();

private:
    meta_xref_t* m__root;
    kaitai::kstruct* m__parent;

public:
    meta_xref_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
