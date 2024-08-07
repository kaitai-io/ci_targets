#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class term_strz_utf16_v1_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class term_strz_utf16_v1_t : public kaitai::kstruct {

public:

    term_strz_utf16_v1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, term_strz_utf16_v1_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~term_strz_utf16_v1_t();

private:
    std::string m_s1;
    std::string m_s2;
    uint16_t m_term;
    std::string m_s3;
    term_strz_utf16_v1_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string s1() const { return m_s1; }
    std::string s2() const { return m_s2; }
    uint16_t term() const { return m_term; }
    std::string s3() const { return m_s3; }
    term_strz_utf16_v1_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
