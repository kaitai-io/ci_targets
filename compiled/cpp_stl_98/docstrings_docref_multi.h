#ifndef DOCSTRINGS_DOCREF_MULTI_H_
#define DOCSTRINGS_DOCREF_MULTI_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"

#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

/**
 * Sample docstring
 * \sa Plain text description of doc ref, page 42
 * \sa http://www.example.com/some/path/?even_with=query&more=2 Source
 * \sa http://www.example.com/three Documentation name
 */

class docstrings_docref_multi_t : public kaitai::kstruct {

public:

    docstrings_docref_multi_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, docstrings_docref_multi_t* p__root = 0);

private:
    void _read();

public:
    ~docstrings_docref_multi_t();

private:
    docstrings_docref_multi_t* m__root;
    kaitai::kstruct* m__parent;

public:
    docstrings_docref_multi_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // DOCSTRINGS_DOCREF_MULTI_H_
