#ifndef OPAQUE_WITH_PARAM_H_
#define OPAQUE_WITH_PARAM_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif
class paramsDef_t;

class opaqueWithParam_t : public kaitai::kstruct {

public:

    opaqueWithParam_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, opaqueWithParam_t* p__root = 0);

private:
    void _read();

public:
    ~opaqueWithParam_t();

private:
    paramsDef_t* m_one;
    opaqueWithParam_t* m__root;
    kaitai::kstruct* m__parent;

public:
    paramsDef_t* one() const { return m_one; }
    opaqueWithParam_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // OPAQUE_WITH_PARAM_H_
