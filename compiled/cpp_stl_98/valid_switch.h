#ifndef VALID_SWITCH_H_
#define VALID_SWITCH_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class valid_switch_t : public kaitai::kstruct {

public:

    valid_switch_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, valid_switch_t* p__root = 0);

private:
    void _read();

public:
    ~valid_switch_t();
    void _cleanUp();

private:
    uint8_t m_a;
    int32_t m_b;
    valid_switch_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t a() const { return m_a; }
    int32_t b() const { return m_b; }
    valid_switch_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // VALID_SWITCH_H_
