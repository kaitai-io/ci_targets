#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class str_pad_term_utf16_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class str_pad_term_utf16_t : public kaitai::kstruct {

public:

    str_pad_term_utf16_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, str_pad_term_utf16_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~str_pad_term_utf16_t();
    std::string str_term() const { return m_str_term; }
    std::string str_term_include() const { return m_str_term_include; }
    std::string str_term_and_pad() const { return m_str_term_and_pad; }
    str_pad_term_utf16_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    std::string m_str_term;
    std::string m_str_term_include;
    std::string m_str_term_and_pad;
    str_pad_term_utf16_t* m__root;
    kaitai::kstruct* m__parent;
};
