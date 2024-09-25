// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_bytes_ops.h"

expr_bytes_ops_t::expr_bytes_ops_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_bytes_ops_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_one_first = false;
    f_one_last = false;
    f_one_max = false;
    f_one_mid = false;
    f_one_min = false;
    f_one_size = false;
    f_one_to_s = false;
    f_two = false;
    f_two_first = false;
    f_two_last = false;
    f_two_max = false;
    f_two_mid = false;
    f_two_min = false;
    f_two_size = false;
    f_two_to_s = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void expr_bytes_ops_t::_read() {
    m_one = m__io->read_bytes(3);
}

expr_bytes_ops_t::~expr_bytes_ops_t() {
    _clean_up();
}

void expr_bytes_ops_t::_clean_up() {
}

uint8_t expr_bytes_ops_t::one_first() {
    if (f_one_first)
        return m_one_first;
    f_one_first = true;
    m_one_first = one().at(0);
    return m_one_first;
}

uint8_t expr_bytes_ops_t::one_last() {
    if (f_one_last)
        return m_one_last;
    f_one_last = true;
    m_one_last = one().at(one().length() - 1);
    return m_one_last;
}

uint8_t expr_bytes_ops_t::one_max() {
    if (f_one_max)
        return m_one_max;
    f_one_max = true;
    m_one_max = kaitai::kstream::byte_array_max(one());
    return m_one_max;
}

uint8_t expr_bytes_ops_t::one_mid() {
    if (f_one_mid)
        return m_one_mid;
    f_one_mid = true;
    m_one_mid = one().at(1);
    return m_one_mid;
}

uint8_t expr_bytes_ops_t::one_min() {
    if (f_one_min)
        return m_one_min;
    f_one_min = true;
    m_one_min = kaitai::kstream::byte_array_min(one());
    return m_one_min;
}

int32_t expr_bytes_ops_t::one_size() {
    if (f_one_size)
        return m_one_size;
    f_one_size = true;
    m_one_size = one().length();
    return m_one_size;
}

std::string expr_bytes_ops_t::one_to_s() {
    if (f_one_to_s)
        return m_one_to_s;
    f_one_to_s = true;
    m_one_to_s = kaitai::kstream::bytes_to_str(one(), "IBM866");
    return m_one_to_s;
}

std::string expr_bytes_ops_t::two() {
    if (f_two)
        return m_two;
    f_two = true;
    m_two = std::string("\x41\xFF\x4B", 3);
    return m_two;
}

uint8_t expr_bytes_ops_t::two_first() {
    if (f_two_first)
        return m_two_first;
    f_two_first = true;
    m_two_first = two().at(0);
    return m_two_first;
}

uint8_t expr_bytes_ops_t::two_last() {
    if (f_two_last)
        return m_two_last;
    f_two_last = true;
    m_two_last = two().at(two().length() - 1);
    return m_two_last;
}

uint8_t expr_bytes_ops_t::two_max() {
    if (f_two_max)
        return m_two_max;
    f_two_max = true;
    m_two_max = kaitai::kstream::byte_array_max(two());
    return m_two_max;
}

uint8_t expr_bytes_ops_t::two_mid() {
    if (f_two_mid)
        return m_two_mid;
    f_two_mid = true;
    m_two_mid = two().at(1);
    return m_two_mid;
}

uint8_t expr_bytes_ops_t::two_min() {
    if (f_two_min)
        return m_two_min;
    f_two_min = true;
    m_two_min = kaitai::kstream::byte_array_min(two());
    return m_two_min;
}

int32_t expr_bytes_ops_t::two_size() {
    if (f_two_size)
        return m_two_size;
    f_two_size = true;
    m_two_size = two().length();
    return m_two_size;
}

std::string expr_bytes_ops_t::two_to_s() {
    if (f_two_to_s)
        return m_two_to_s;
    f_two_to_s = true;
    m_two_to_s = kaitai::kstream::bytes_to_str(two(), "IBM866");
    return m_two_to_s;
}
