#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class valid_fail_range_str_t : public kaitai::kstruct {

public:

    valid_fail_range_str_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, valid_fail_range_str_t* p__root = nullptr);

private:
    void _read();

public:
    ~valid_fail_range_str_t();

private:
    std::string m_foo;
    valid_fail_range_str_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string foo() const { return m_foo; }
    valid_fail_range_str_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
