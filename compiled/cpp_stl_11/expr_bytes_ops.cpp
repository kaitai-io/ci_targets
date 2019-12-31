// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "expr_bytes_ops.h"

expr_bytes_ops_t::expr_bytes_ops_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_bytes_ops_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_two_last = false;
    f_two_max = false;
    f_one_min = false;
    f_one_first = false;
    f_one_mid = false;
    f_two = false;
    f_two_min = false;
    f_two_mid = false;
    f_one_size = false;
    f_one_last = false;
    f_two_size = false;
    f_one_max = false;
    f_two_first = false;
    _read();
}

void expr_bytes_ops_t::_read() {
    m_one = m__io->read_bytes(3);
}

expr_bytes_ops_t::~expr_bytes_ops_t() {
}

uint8_t expr_bytes_ops_t::two_last() {
    if (f_two_last)
        return m_two_last;
    m_two_last = two().back();
    f_two_last = true;
    return m_two_last;
}

uint8_t expr_bytes_ops_t::two_max() {
    if (f_two_max)
        return m_two_max;
    m_two_max = kaitai::kstream::byte_array_max(two());
    f_two_max = true;
    return m_two_max;
}

uint8_t expr_bytes_ops_t::one_min() {
    if (f_one_min)
        return m_one_min;
    m_one_min = kaitai::kstream::byte_array_min(one());
    f_one_min = true;
    return m_one_min;
}

uint8_t expr_bytes_ops_t::one_first() {
    if (f_one_first)
        return m_one_first;
    m_one_first = one().front();
    f_one_first = true;
    return m_one_first;
}

uint8_t expr_bytes_ops_t::one_mid() {
    if (f_one_mid)
        return m_one_mid;
    m_one_mid = one()[1];
    f_one_mid = true;
    return m_one_mid;
}

std::string expr_bytes_ops_t::two() {
    if (f_two)
        return m_two;
    m_two = std::string("\x41\x43\x4B", 3);
    f_two = true;
    return m_two;
}

uint8_t expr_bytes_ops_t::two_min() {
    if (f_two_min)
        return m_two_min;
    m_two_min = kaitai::kstream::byte_array_min(two());
    f_two_min = true;
    return m_two_min;
}

uint8_t expr_bytes_ops_t::two_mid() {
    if (f_two_mid)
        return m_two_mid;
    m_two_mid = two()[1];
    f_two_mid = true;
    return m_two_mid;
}

int32_t expr_bytes_ops_t::one_size() {
    if (f_one_size)
        return m_one_size;
    m_one_size = one().length();
    f_one_size = true;
    return m_one_size;
}

uint8_t expr_bytes_ops_t::one_last() {
    if (f_one_last)
        return m_one_last;
    m_one_last = one().back();
    f_one_last = true;
    return m_one_last;
}

int32_t expr_bytes_ops_t::two_size() {
    if (f_two_size)
        return m_two_size;
    m_two_size = two().length();
    f_two_size = true;
    return m_two_size;
}

uint8_t expr_bytes_ops_t::one_max() {
    if (f_one_max)
        return m_one_max;
    m_one_max = kaitai::kstream::byte_array_max(one());
    f_one_max = true;
    return m_one_max;
}

uint8_t expr_bytes_ops_t::two_first() {
    if (f_two_first)
        return m_two_first;
    m_two_first = two().front();
    f_two_first = true;
    return m_two_first;
}
