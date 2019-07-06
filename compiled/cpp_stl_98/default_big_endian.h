#ifndef DEFAULT_BIG_ENDIAN_H_
#define DEFAULT_BIG_ENDIAN_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"

#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class default_big_endian_t : public kaitai::kstruct {

public:

    default_big_endian_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, default_big_endian_t* p__root = 0);

private:
    void _read();

public:
    ~default_big_endian_t();

private:
    uint32_t m_one;
    default_big_endian_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint32_t one() const { return m_one; }
    default_big_endian_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // DEFAULT_BIG_ENDIAN_H_
