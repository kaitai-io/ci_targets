#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"

#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class eof_exception_bytes_t : public kaitai::kstruct {

public:

    eof_exception_bytes_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, eof_exception_bytes_t* p__root = nullptr);

private:
    void _read();

public:
    ~eof_exception_bytes_t();

private:
    std::string m_buf;
    eof_exception_bytes_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string buf() const { return m_buf; }
    eof_exception_bytes_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
