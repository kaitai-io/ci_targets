#ifndef HELLO_WORLD_H_
#define HELLO_WORLD_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class helloWorld_t : public kaitai::kstruct {

public:

    helloWorld_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, helloWorld_t* p__root = 0);

private:
    void _read();

public:
    ~helloWorld_t();

private:
    uint8_t m_one;
    helloWorld_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t one() const { return m_one; }
    helloWorld_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // HELLO_WORLD_H_
