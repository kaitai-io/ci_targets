#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class to_string_custom_t : public kaitai::kstruct {

public:

    to_string_custom_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, to_string_custom_t* p__root = nullptr);

private:
    void _read();

public:
    ~to_string_custom_t();
    void _clean_up();

private:
    std::string m_s1;
    std::string m_s2;
    to_string_custom_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string s1() const { return m_s1; }
    std::string s2() const { return m_s2; }
    to_string_custom_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
