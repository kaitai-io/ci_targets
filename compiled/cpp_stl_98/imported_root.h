#ifndef IMPORTED_ROOT_H_
#define IMPORTED_ROOT_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class imported_root_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class imported_root_t : public kaitai::kstruct {

public:

    imported_root_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, imported_root_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~imported_root_t();

private:
    uint8_t m_one;
    imported_root_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t one() const { return m_one; }
    imported_root_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // IMPORTED_ROOT_H_
