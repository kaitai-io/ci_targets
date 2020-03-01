#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

/**
 * Sample docstring
 * \sa Plain text description of doc ref, page 42
 * \sa http://www.example.com/some/path/?even_with=query&more=2 Source
 * \sa http://www.example.com/three Documentation name
 */

class docstringsDocrefMulti_t : public kaitai::kstruct {

public:

    docstringsDocrefMulti_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, docstringsDocrefMulti_t* p__root = nullptr);

private:
    void _read();

public:
    ~docstringsDocrefMulti_t();

private:
    docstringsDocrefMulti_t* m__root;
    kaitai::kstruct* m__parent;

public:
    docstringsDocrefMulti_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
