#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class hello_world_t : public kaitai::kstruct {

public:

    hello_world_t(kaitai::kstream* p__io, std::unique_ptr<kaitai::kstruct> p__parent = nullptr, hello_world_t* p__root = nullptr);

private:
    void _read();

public:
    ~hello_world_t();

private:
    uint8_t m_one;
    hello_world_t* m__root;
    std::unique_ptr<kaitai::kstruct> m__parent;

public:
    uint8_t one() const { return m_one; }
    hello_world_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent.get(); }
};
