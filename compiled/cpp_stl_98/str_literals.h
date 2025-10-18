#ifndef STR_LITERALS_H_
#define STR_LITERALS_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class str_literals_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class str_literals_t : public kaitai::kstruct {

public:

    str_literals_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, str_literals_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~str_literals_t();
    std::string backslashes();
    std::string complex_str();
    std::string double_quotes();
    std::string octal_eatup();
    std::string octal_eatup2();
    str_literals_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_backslashes;
    std::string m_backslashes;
    bool f_complex_str;
    std::string m_complex_str;
    bool f_double_quotes;
    std::string m_double_quotes;
    bool f_octal_eatup;
    std::string m_octal_eatup;
    bool f_octal_eatup2;
    std::string m_octal_eatup2;
    str_literals_t* m__root;
    kaitai::kstruct* m__parent;
};

#endif  // STR_LITERALS_H_
