#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class expr_fstring_0_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class expr_fstring_0_t : public kaitai::kstruct {

public:

    expr_fstring_0_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, expr_fstring_0_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~expr_fstring_0_t();
    std::string empty();
    std::string head_and_int();
    std::string head_and_int_literal();
    std::string head_and_str();
    std::string head_and_str_literal();
    std::string literal();
    std::string literal_with_escapes();
    std::string seq_str() const { return m_seq_str; }
    uint8_t seq_int() const { return m_seq_int; }
    expr_fstring_0_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_empty;
    std::string m_empty;
    bool f_head_and_int;
    std::string m_head_and_int;
    bool f_head_and_int_literal;
    std::string m_head_and_int_literal;
    bool f_head_and_str;
    std::string m_head_and_str;
    bool f_head_and_str_literal;
    std::string m_head_and_str_literal;
    bool f_literal;
    std::string m_literal;
    bool f_literal_with_escapes;
    std::string m_literal_with_escapes;
    std::string m_seq_str;
    uint8_t m_seq_int;
    expr_fstring_0_t* m__root;
    kaitai::kstruct* m__parent;
};
