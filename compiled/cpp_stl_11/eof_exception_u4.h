#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class eof_exception_u4_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class eof_exception_u4_t : public kaitai::kstruct {

public:

    eof_exception_u4_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, eof_exception_u4_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~eof_exception_u4_t();

private:
    std::string m_prebuf;
    uint32_t m_fail_int;
    eof_exception_u4_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string prebuf() const { return m_prebuf; }
    uint32_t fail_int() const { return m_fail_int; }
    eof_exception_u4_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
