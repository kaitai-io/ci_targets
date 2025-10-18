#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class eof_exception_bits_be_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class eof_exception_bits_be_t : public kaitai::kstruct {

public:

    eof_exception_bits_be_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, eof_exception_bits_be_t* p__root = nullptr);
    void _read();

private:
    void _clean_up();

public:
    ~eof_exception_bits_be_t();
    uint64_t pre_bits() const { return m_pre_bits; }
    uint64_t fail_bits() const { return m_fail_bits; }
    eof_exception_bits_be_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    uint64_t m_pre_bits;
    uint64_t m_fail_bits;
    eof_exception_bits_be_t* m__root;
    kaitai::kstruct* m__parent;
};
