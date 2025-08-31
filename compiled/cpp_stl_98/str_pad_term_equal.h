#ifndef STR_PAD_TERM_EQUAL_H_
#define STR_PAD_TERM_EQUAL_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class str_pad_term_equal_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class str_pad_term_equal_t : public kaitai::kstruct {

public:

    str_pad_term_equal_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, str_pad_term_equal_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~str_pad_term_equal_t();

private:
    std::string m_s1;
    std::string m_s2;
    std::string m_s3;
    std::string m_s4;
    str_pad_term_equal_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string s1() const { return m_s1; }
    std::string s2() const { return m_s2; }
    std::string s3() const { return m_s3; }
    std::string s4() const { return m_s4; }
    str_pad_term_equal_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // STR_PAD_TERM_EQUAL_H_
