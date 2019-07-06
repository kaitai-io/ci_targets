#ifndef IMPORTED_1_H_
#define IMPORTED_1_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"

#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif
class imported_2_t;

class imported_1_t : public kaitai::kstruct {

public:

    imported_1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, imported_1_t* p__root = 0);

private:
    void _read();

public:
    ~imported_1_t();

private:
    uint8_t m_one;
    imported_2_t* m_two;
    imported_1_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t one() const { return m_one; }
    imported_2_t* two() const { return m_two; }
    imported_1_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // IMPORTED_1_H_
