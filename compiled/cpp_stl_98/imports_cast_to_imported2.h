#ifndef IMPORTS_CAST_TO_IMPORTED2_H_
#define IMPORTS_CAST_TO_IMPORTED2_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include "cast_to_imported2.h"
#include "hello_world.h"

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif
class cast_to_imported2_t;
class hello_world_t;

class imports_cast_to_imported2_t : public kaitai::kstruct {

public:

    imports_cast_to_imported2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, imports_cast_to_imported2_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~imports_cast_to_imported2_t();

private:
    hello_world_t* m_hw;
    cast_to_imported2_t* m_two;
    imports_cast_to_imported2_t* m__root;
    kaitai::kstruct* m__parent;

public:
    hello_world_t* hw() const { return m_hw; }
    cast_to_imported2_t* two() const { return m_two; }
    imports_cast_to_imported2_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // IMPORTS_CAST_TO_IMPORTED2_H_
