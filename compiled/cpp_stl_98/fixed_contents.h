#ifndef FIXED_CONTENTS_H_
#define FIXED_CONTENTS_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class fixed_contents_t : public kaitai::kstruct {

public:

    fixed_contents_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, fixed_contents_t* p__root = 0);

private:
    void _read();

public:
    ~fixed_contents_t();
    void _cleanUp();

private:
    std::string m_normal;
    std::string m_high_bit_8;
    fixed_contents_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string normal() const { return m_normal; }
    std::string high_bit_8() const { return m_high_bit_8; }
    fixed_contents_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // FIXED_CONTENTS_H_
