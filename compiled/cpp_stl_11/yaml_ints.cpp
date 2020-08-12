// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "yaml_ints.h"

yaml_ints_t::yaml_ints_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, yaml_ints_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_test_u4_dec = false;
    f_test_u4_hex = false;
    f_test_u8_dec = false;
    f_test_u8_hex = false;
    _read();
}

void yaml_ints_t::_read() {
}

yaml_ints_t::~yaml_ints_t() {
    _clean_up();
}

void yaml_ints_t::_clean_up() {
}

int32_t yaml_ints_t::test_u4_dec() {
    if (f_test_u4_dec)
        return m_test_u4_dec;
    m_test_u4_dec = 4294967295UL;
    f_test_u4_dec = true;
    return m_test_u4_dec;
}

int32_t yaml_ints_t::test_u4_hex() {
    if (f_test_u4_hex)
        return m_test_u4_hex;
    m_test_u4_hex = 4294967295UL;
    f_test_u4_hex = true;
    return m_test_u4_hex;
}

int32_t yaml_ints_t::test_u8_dec() {
    if (f_test_u8_dec)
        return m_test_u8_dec;
    m_test_u8_dec = 18446744073709551615ULL;
    f_test_u8_dec = true;
    return m_test_u8_dec;
}

int32_t yaml_ints_t::test_u8_hex() {
    if (f_test_u8_hex)
        return m_test_u8_hex;
    m_test_u8_hex = 18446744073709551615ULL;
    f_test_u8_hex = true;
    return m_test_u8_hex;
}
