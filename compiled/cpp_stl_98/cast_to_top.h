#ifndef CAST_TO_TOP_H_
#define CAST_TO_TOP_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class castToTop_t : public kaitai::kstruct {

public:

    castToTop_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, castToTop_t* p__root = 0);

private:
    void _read();

public:
    ~castToTop_t();

private:
    bool f_header;
    castToTop_t* m_header;

public:
    castToTop_t* header();

private:
    bool f_header_casted;
    castToTop_t* m_header_casted;

public:
    castToTop_t* header_casted();

private:
    uint8_t m_code;
    castToTop_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t code() const { return m_code; }
    castToTop_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // CAST_TO_TOP_H_
