// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_3.h"

expr_3_t::expr_3_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_3_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_four = false;
    f_is_str_eq = false;
    f_is_str_ge = false;
    f_is_str_gt = false;
    f_is_str_le = false;
    f_is_str_lt = false;
    f_is_str_lt2 = false;
    f_is_str_ne = false;
    f_test_not = false;
    f_three = false;
    _read();
}

void expr_3_t::_read() {
    m_one = m__io->read_u1();
    m_two = kaitai::kstream::bytes_to_str(m__io->read_bytes(3), "ASCII");
}

expr_3_t::~expr_3_t() {
    _clean_up();
}

void expr_3_t::_clean_up() {
}

std::string expr_3_t::four() {
    if (f_four)
        return m_four;
    m_four = (std::string("_") + two()) + std::string("_");
    f_four = true;
    return m_four;
}

bool expr_3_t::is_str_eq() {
    if (f_is_str_eq)
        return m_is_str_eq;
    m_is_str_eq = two() == (std::string("ACK"));
    f_is_str_eq = true;
    return m_is_str_eq;
}

bool expr_3_t::is_str_ge() {
    if (f_is_str_ge)
        return m_is_str_ge;
    m_is_str_ge = (two().compare(std::string("ACK2")) >= 0);
    f_is_str_ge = true;
    return m_is_str_ge;
}

bool expr_3_t::is_str_gt() {
    if (f_is_str_gt)
        return m_is_str_gt;
    m_is_str_gt = (two().compare(std::string("ACK2")) > 0);
    f_is_str_gt = true;
    return m_is_str_gt;
}

bool expr_3_t::is_str_le() {
    if (f_is_str_le)
        return m_is_str_le;
    m_is_str_le = (two().compare(std::string("ACK2")) <= 0);
    f_is_str_le = true;
    return m_is_str_le;
}

bool expr_3_t::is_str_lt() {
    if (f_is_str_lt)
        return m_is_str_lt;
    m_is_str_lt = (two().compare(std::string("ACK2")) < 0);
    f_is_str_lt = true;
    return m_is_str_lt;
}

bool expr_3_t::is_str_lt2() {
    if (f_is_str_lt2)
        return m_is_str_lt2;
    m_is_str_lt2 = (three().compare(two()) < 0);
    f_is_str_lt2 = true;
    return m_is_str_lt2;
}

bool expr_3_t::is_str_ne() {
    if (f_is_str_ne)
        return m_is_str_ne;
    m_is_str_ne = two() != std::string("ACK");
    f_is_str_ne = true;
    return m_is_str_ne;
}

bool expr_3_t::test_not() {
    if (f_test_not)
        return m_test_not;
    m_test_not = !(false);
    f_test_not = true;
    return m_test_not;
}

std::string expr_3_t::three() {
    if (f_three)
        return m_three;
    m_three = std::string("@") + two();
    f_three = true;
    return m_three;
}
