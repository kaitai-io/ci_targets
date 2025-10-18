#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class yaml_ints_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class yaml_ints_t : public kaitai::kstruct {

public:

    yaml_ints_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, yaml_ints_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~yaml_ints_t();
    int32_t test_u4_dec();
    int32_t test_u4_hex();
    int32_t test_u8_dec();
    int32_t test_u8_hex();
    yaml_ints_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_test_u4_dec;
    int32_t m_test_u4_dec;
    bool f_test_u4_hex;
    int32_t m_test_u4_hex;
    bool f_test_u8_dec;
    int32_t m_test_u8_dec;
    bool f_test_u8_hex;
    int32_t m_test_u8_hex;
    yaml_ints_t* m__root;
    kaitai::kstruct* m__parent;
};
