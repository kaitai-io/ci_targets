// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_bytes_cmp.h"

expr_bytes_cmp_t::expr_bytes_cmp_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_bytes_cmp_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_ack = false;
    f_ack2 = false;
    f_hi_val = false;
    f_is_eq = false;
    f_is_ge = false;
    f_is_gt = false;
    f_is_gt2 = false;
    f_is_le = false;
    f_is_lt = false;
    f_is_lt2 = false;
    f_is_ne = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void expr_bytes_cmp_t::_read() {
    m_one = m__io->read_bytes(1);
    m_two = m__io->read_bytes(3);
}

expr_bytes_cmp_t::~expr_bytes_cmp_t() {
    _clean_up();
}

void expr_bytes_cmp_t::_clean_up() {
}

std::string expr_bytes_cmp_t::ack() {
    if (f_ack)
        return m_ack;
    m_ack = std::string("\x41\x43\x4B", 3);
    f_ack = true;
    return m_ack;
}

std::string expr_bytes_cmp_t::ack2() {
    if (f_ack2)
        return m_ack2;
    m_ack2 = std::string("\x41\x43\x4B\x32", 4);
    f_ack2 = true;
    return m_ack2;
}

std::string expr_bytes_cmp_t::hi_val() {
    if (f_hi_val)
        return m_hi_val;
    m_hi_val = std::string("\x90\x43", 2);
    f_hi_val = true;
    return m_hi_val;
}

bool expr_bytes_cmp_t::is_eq() {
    if (f_is_eq)
        return m_is_eq;
    m_is_eq = two() == ack();
    f_is_eq = true;
    return m_is_eq;
}

bool expr_bytes_cmp_t::is_ge() {
    if (f_is_ge)
        return m_is_ge;
    m_is_ge = two() >= ack2();
    f_is_ge = true;
    return m_is_ge;
}

bool expr_bytes_cmp_t::is_gt() {
    if (f_is_gt)
        return m_is_gt;
    m_is_gt = two() > ack2();
    f_is_gt = true;
    return m_is_gt;
}

bool expr_bytes_cmp_t::is_gt2() {
    if (f_is_gt2)
        return m_is_gt2;
    m_is_gt2 = hi_val() > two();
    f_is_gt2 = true;
    return m_is_gt2;
}

bool expr_bytes_cmp_t::is_le() {
    if (f_is_le)
        return m_is_le;
    m_is_le = two() <= ack2();
    f_is_le = true;
    return m_is_le;
}

bool expr_bytes_cmp_t::is_lt() {
    if (f_is_lt)
        return m_is_lt;
    m_is_lt = two() < ack2();
    f_is_lt = true;
    return m_is_lt;
}

bool expr_bytes_cmp_t::is_lt2() {
    if (f_is_lt2)
        return m_is_lt2;
    m_is_lt2 = one() < two();
    f_is_lt2 = true;
    return m_is_lt2;
}

bool expr_bytes_cmp_t::is_ne() {
    if (f_is_ne)
        return m_is_ne;
    m_is_ne = two() != ack();
    f_is_ne = true;
    return m_is_ne;
}
