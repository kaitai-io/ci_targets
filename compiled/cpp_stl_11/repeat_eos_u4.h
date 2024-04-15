#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class repeat_eos_u4_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class repeat_eos_u4_t : public kaitai::kstruct {

public:

    repeat_eos_u4_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, repeat_eos_u4_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~repeat_eos_u4_t();

private:
    std::unique_ptr<std::vector<uint32_t>> m_numbers;
    repeat_eos_u4_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<uint32_t>* numbers() const { return m_numbers.get(); }
    repeat_eos_u4_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
