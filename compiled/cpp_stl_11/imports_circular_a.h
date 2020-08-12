#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include "imports_circular_b.h"

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class imports_circular_a_t : public kaitai::kstruct {

public:

    imports_circular_a_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, imports_circular_a_t* p__root = nullptr);

private:
    void _read();

public:
    ~imports_circular_a_t();
    void _clean_up();

private:
    uint8_t m_code;
    std::unique_ptr<imports_circular_b_t> m_two;
    imports_circular_a_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t code() const { return m_code; }
    imports_circular_b_t* two() const { return m_two.get(); }
    imports_circular_a_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
