#ifndef JS_SIGNED_RIGHT_SHIFT_H_
#define JS_SIGNED_RIGHT_SHIFT_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class jsSignedRightShift_t : public kaitai::kstruct {

public:

    jsSignedRightShift_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, jsSignedRightShift_t* p__root = 0);

private:
    void _read();

public:
    ~jsSignedRightShift_t();

private:
    bool f_should_be_40000000;
    int32_t m_should_be_40000000;

public:
    int32_t should_be_40000000();

private:
    bool f_should_be_a00000;
    int32_t m_should_be_a00000;

public:
    int32_t should_be_a00000();

private:
    jsSignedRightShift_t* m__root;
    kaitai::kstruct* m__parent;

public:
    jsSignedRightShift_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // JS_SIGNED_RIGHT_SHIFT_H_
