#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"

#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class non_standard_t : public kaitai::kstruct {

public:

    non_standard_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, non_standard_t* p__root = nullptr);

private:
    void _read();

public:
    ~non_standard_t();

private:
    bool f_vi;
    uint8_t m_vi;

public:
    uint8_t vi();

private:
    bool f_pi;
    uint8_t m_pi;

public:
    uint8_t pi();

private:
    uint8_t m_foo;
    uint32_t m_bar;
    bool n_bar;

public:
    bool _is_null_bar() { bar(); return n_bar; };

private:
    non_standard_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t foo() const { return m_foo; }
    uint32_t bar() const { return m_bar; }
    non_standard_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
