#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class yamlInts_t : public kaitai::kstruct {

public:

    yamlInts_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, yamlInts_t* p__root = nullptr);

private:
    void _read();

public:
    ~yamlInts_t();

private:
    bool f_test_u4_dec;
    int32_t m_test_u4_dec;

public:
    int32_t test_u4_dec();

private:
    bool f_test_u4_hex;
    int32_t m_test_u4_hex;

public:
    int32_t test_u4_hex();

private:
    bool f_test_u8_dec;
    int32_t m_test_u8_dec;

public:
    int32_t test_u8_dec();

private:
    bool f_test_u8_hex;
    int32_t m_test_u8_hex;

public:
    int32_t test_u8_hex();

private:
    yamlInts_t* m__root;
    kaitai::kstruct* m__parent;

public:
    yamlInts_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
