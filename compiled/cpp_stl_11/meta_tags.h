#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class meta_tags_t : public kaitai::kstruct {

public:

    meta_tags_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, meta_tags_t* p__root = nullptr);

private:
    void _read();

public:

private:
    void _clean_up();

public:
    ~meta_tags_t();

private:
    meta_tags_t* m__root;
    kaitai::kstruct* m__parent;

public:
    meta_tags_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
