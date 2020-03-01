#ifndef OPAQUE_EXTERNAL_TYPE_H_
#define OPAQUE_EXTERNAL_TYPE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif
class termStrz_t;

class opaqueExternalType_t : public kaitai::kstruct {

public:

    opaqueExternalType_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, opaqueExternalType_t* p__root = 0);

private:
    void _read();

public:
    ~opaqueExternalType_t();

private:
    termStrz_t* m_one;
    opaqueExternalType_t* m__root;
    kaitai::kstruct* m__parent;

public:
    termStrz_t* one() const { return m_one; }
    opaqueExternalType_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // OPAQUE_EXTERNAL_TYPE_H_
