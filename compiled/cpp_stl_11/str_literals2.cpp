// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "str_literals2.h"

str_literals2_t::str_literals2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, str_literals2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_at_sign = false;
    f_dollar1 = false;
    f_dollar2 = false;
    f_hash = false;
    _read();
}

void str_literals2_t::_read() {
}

str_literals2_t::~str_literals2_t() {
    _clean_up();
}

void str_literals2_t::_clean_up() {
}

std::string str_literals2_t::at_sign() {
    if (f_at_sign)
        return m_at_sign;
    f_at_sign = true;
    m_at_sign = std::string("@foo");
    return m_at_sign;
}

std::string str_literals2_t::dollar1() {
    if (f_dollar1)
        return m_dollar1;
    f_dollar1 = true;
    m_dollar1 = std::string("$foo");
    return m_dollar1;
}

std::string str_literals2_t::dollar2() {
    if (f_dollar2)
        return m_dollar2;
    f_dollar2 = true;
    m_dollar2 = std::string("${foo}");
    return m_dollar2;
}

std::string str_literals2_t::hash() {
    if (f_hash)
        return m_hash;
    f_hash = true;
    m_hash = std::string("#{foo}");
    return m_hash;
}
