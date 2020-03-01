// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "str_literals2.h"

strLiterals2_t::strLiterals2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, strLiterals2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_dollar1 = false;
    f_dollar2 = false;
    f_hash = false;
    f_at_sign = false;
    _read();
}

void strLiterals2_t::_read() {
}

strLiterals2_t::~strLiterals2_t() {
}

std::string strLiterals2_t::dollar1() {
    if (f_dollar1)
        return m_dollar1;
    m_dollar1 = std::string("$foo");
    f_dollar1 = true;
    return m_dollar1;
}

std::string strLiterals2_t::dollar2() {
    if (f_dollar2)
        return m_dollar2;
    m_dollar2 = std::string("${foo}");
    f_dollar2 = true;
    return m_dollar2;
}

std::string strLiterals2_t::hash() {
    if (f_hash)
        return m_hash;
    m_hash = std::string("#{foo}");
    f_hash = true;
    return m_hash;
}

std::string strLiterals2_t::at_sign() {
    if (f_at_sign)
        return m_at_sign;
    m_at_sign = std::string("@foo");
    f_at_sign = true;
    return m_at_sign;
}
