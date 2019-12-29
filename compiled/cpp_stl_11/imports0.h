#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif
class hello_world_t;

class imports0_t : public kaitai::kstruct {

public:

    imports0_t(kaitai::kstream* p__io, std::unique_ptr<kaitai::kstruct> p__parent = nullptr, imports0_t* p__root = nullptr);

private:
    void _read();

public:
    ~imports0_t();

private:
    bool f_hw_one;
    uint8_t m_hw_one;

public:
    uint8_t hw_one();

private:
    uint8_t m_two;
    std::unique_ptr<hello_world_t> m_hw;
    imports0_t* m__root;
    std::unique_ptr<kaitai::kstruct> m__parent;

public:
    uint8_t two() const { return m_two; }
    hello_world_t* hw() const { return m_hw.get(); }
    imports0_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent.get(); }
};
