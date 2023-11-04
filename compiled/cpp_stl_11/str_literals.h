#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class str_literals_t : public kaitai::kstruct {

public:

    str_literals_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, str_literals_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~str_literals_t();

private:
    bool f_octal_eatup2;
    std::string m_octal_eatup2;

public:
    std::string octal_eatup2();

private:
    bool f_backslashes;
    std::string m_backslashes;

public:
    std::string backslashes();

private:
    bool f_octal_eatup;
    std::string m_octal_eatup;

public:
    std::string octal_eatup();

private:
    bool f_double_quotes;
    std::string m_double_quotes;

public:
    std::string double_quotes();

private:
    bool f_complex_str;
    std::string m_complex_str;

public:
    std::string complex_str();

private:
    str_literals_t* m__root;
    kaitai::kstruct* m__parent;

public:
    str_literals_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
