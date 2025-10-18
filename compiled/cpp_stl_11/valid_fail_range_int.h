#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class valid_fail_range_int_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class valid_fail_range_int_t : public kaitai::kstruct {

public:

    valid_fail_range_int_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, valid_fail_range_int_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~valid_fail_range_int_t();
    uint8_t foo() const { return m_foo; }
    valid_fail_range_int_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    uint8_t m_foo;
    valid_fail_range_int_t* m__root;
    kaitai::kstruct* m__parent;
};
