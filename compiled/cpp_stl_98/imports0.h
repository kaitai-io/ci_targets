#ifndef IMPORTS0_H_
#define IMPORTS0_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include "hello_world.h"

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif
class hello_world_t;

class imports0_t : public kaitai::kstruct {

public:

    imports0_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, imports0_t* p__root = 0);

private:
    void _read();

public:
    ~imports0_t();
    void _cleanUp();

private:
    bool f_hw_one;
    uint8_t m_hw_one;

public:
    uint8_t hw_one();

private:
    uint8_t m_two;
    hello_world_t* m_hw;
    imports0_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t two() const { return m_two; }
    hello_world_t* hw() const { return m_hw; }
    imports0_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // IMPORTS0_H_
