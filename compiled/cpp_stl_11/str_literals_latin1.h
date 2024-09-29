#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class str_literals_latin1_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class str_literals_latin1_t : public kaitai::kstruct {

public:

    str_literals_latin1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, str_literals_latin1_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~str_literals_latin1_t();

private:
    bool f_parsed_eq_literal;
    bool m_parsed_eq_literal;

public:
    bool parsed_eq_literal();

private:
    uint16_t m_len_parsed;
    std::string m_parsed;
    str_literals_latin1_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint16_t len_parsed() const { return m_len_parsed; }
    std::string parsed() const { return m_parsed; }
    str_literals_latin1_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
