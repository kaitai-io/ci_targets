#ifndef EXPR_FSTRING_0_H_
#define EXPR_FSTRING_0_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class expr_fstring_0_t : public kaitai::kstruct {

public:

    expr_fstring_0_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, expr_fstring_0_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~expr_fstring_0_t();

private:
    bool f_empty;
    std::string m_empty;

public:
    std::string empty();

private:
    bool f_head_and_int;
    std::string m_head_and_int;

public:
    std::string head_and_int();

private:
    bool f_head_and_int_literal;
    std::string m_head_and_int_literal;

public:
    std::string head_and_int_literal();

private:
    bool f_head_and_str;
    std::string m_head_and_str;

public:
    std::string head_and_str();

private:
    bool f_head_and_str_literal;
    std::string m_head_and_str_literal;

public:
    std::string head_and_str_literal();

private:
    bool f_literal;
    std::string m_literal;

public:
    std::string literal();

private:
    bool f_literal_with_escapes;
    std::string m_literal_with_escapes;

public:
    std::string literal_with_escapes();

private:
    std::string m_seq_str;
    uint8_t m_seq_int;
    expr_fstring_0_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string seq_str() const { return m_seq_str; }
    uint8_t seq_int() const { return m_seq_int; }
    expr_fstring_0_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // EXPR_FSTRING_0_H_
