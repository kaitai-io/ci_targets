#ifndef CAST_TO_IMPORTED_H_
#define CAST_TO_IMPORTED_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include "hello_world.h"

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif
class hello_world_t;

class cast_to_imported_t : public kaitai::kstruct {

public:

    cast_to_imported_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, cast_to_imported_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~cast_to_imported_t();

private:
    bool f_one_casted;
    hello_world_t* m_one_casted;

public:
    hello_world_t* one_casted();

private:
    hello_world_t* m_one;
    cast_to_imported_t* m__root;
    kaitai::kstruct* m__parent;

public:
    hello_world_t* one() const { return m_one; }
    cast_to_imported_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // CAST_TO_IMPORTED_H_
