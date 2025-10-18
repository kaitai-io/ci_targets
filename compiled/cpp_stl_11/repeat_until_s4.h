#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class repeat_until_s4_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class repeat_until_s4_t : public kaitai::kstruct {

public:

    repeat_until_s4_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, repeat_until_s4_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~repeat_until_s4_t();
    std::vector<int32_t>* entries() const { return m_entries.get(); }
    std::string afterall() const { return m_afterall; }
    repeat_until_s4_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    std::unique_ptr<std::vector<int32_t>> m_entries;
    std::string m_afterall;
    repeat_until_s4_t* m__root;
    kaitai::kstruct* m__parent;
};
