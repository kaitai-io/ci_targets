#ifndef EOF_EXCEPTION_U4_H_
#define EOF_EXCEPTION_U4_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class eofExceptionU4_t : public kaitai::kstruct {

public:

    eofExceptionU4_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, eofExceptionU4_t* p__root = 0);

private:
    void _read();

public:
    ~eofExceptionU4_t();

private:
    std::string m_prebuf;
    uint32_t m_fail_int;
    eofExceptionU4_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string prebuf() const { return m_prebuf; }
    uint32_t fail_int() const { return m_fail_int; }
    eofExceptionU4_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // EOF_EXCEPTION_U4_H_
