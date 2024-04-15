#ifndef ENUM_NEGATIVE_H_
#define ENUM_NEGATIVE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class enum_negative_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class enum_negative_t : public kaitai::kstruct {

public:

    enum constants_t {
        CONSTANTS_NEGATIVE_ONE = -1,
        CONSTANTS_POSITIVE_ONE = 1
    };

    enum_negative_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, enum_negative_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~enum_negative_t();

private:
    constants_t m_f1;
    constants_t m_f2;
    enum_negative_t* m__root;
    kaitai::kstruct* m__parent;

public:
    constants_t f1() const { return m_f1; }
    constants_t f2() const { return m_f2; }
    enum_negative_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // ENUM_NEGATIVE_H_
