// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_fstring_0.h"

expr_fstring_0_t::expr_fstring_0_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_fstring_0_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_empty = false;
    f_head_and_int = false;
    f_head_and_int_literal = false;
    f_head_and_str = false;
    f_head_and_str_literal = false;
    f_literal = false;
    f_literal_with_escapes = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void expr_fstring_0_t::_read() {
    m_seq_str = kaitai::kstream::bytes_to_str(m__io->read_bytes(5), "ASCII");
    m_seq_int = m__io->read_u1();
}

expr_fstring_0_t::~expr_fstring_0_t() {
    _clean_up();
}

void expr_fstring_0_t::_clean_up() {
}

std::string expr_fstring_0_t::empty() {
    if (f_empty)
        return m_empty;
    m_empty = std::string("");
    f_empty = true;
    return m_empty;
}

std::string expr_fstring_0_t::head_and_int() {
    if (f_head_and_int)
        return m_head_and_int;
    m_head_and_int = std::string("abc=") + kaitai::kstream::to_string(seq_int());
    f_head_and_int = true;
    return m_head_and_int;
}

std::string expr_fstring_0_t::head_and_int_literal() {
    if (f_head_and_int_literal)
        return m_head_and_int_literal;
    m_head_and_int_literal = std::string("abc=") + kaitai::kstream::to_string(123);
    f_head_and_int_literal = true;
    return m_head_and_int_literal;
}

std::string expr_fstring_0_t::head_and_str() {
    if (f_head_and_str)
        return m_head_and_str;
    m_head_and_str = std::string("abc=") + seq_str();
    f_head_and_str = true;
    return m_head_and_str;
}

std::string expr_fstring_0_t::head_and_str_literal() {
    if (f_head_and_str_literal)
        return m_head_and_str_literal;
    m_head_and_str_literal = std::string("abc=") + std::string("foo");
    f_head_and_str_literal = true;
    return m_head_and_str_literal;
}

std::string expr_fstring_0_t::literal() {
    if (f_literal)
        return m_literal;
    m_literal = std::string("abc");
    f_literal = true;
    return m_literal;
}

std::string expr_fstring_0_t::literal_with_escapes() {
    if (f_literal_with_escapes)
        return m_literal_with_escapes;
    m_literal_with_escapes = std::string("abc\n\tt");
    f_literal_with_escapes = true;
    return m_literal_with_escapes;
}
