// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "combine_str.h"

combine_str_t::combine_str_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, combine_str_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_limit_or_calc_bytes = false;
    f_limit_or_calc = false;
    f_term_or_limit = false;
    f_limit_or_eos = false;
    f_calc_or_calc_bytes = false;
    f_str_calc_bytes = false;
    f_eos_or_calc = false;
    f_term_or_calc = false;
    f_term_or_calc_bytes = false;
    f_term_or_eos = false;
    f_str_calc = false;
    f_eos_or_calc_bytes = false;
    f_calc_bytes = false;
    _read();
}

void combine_str_t::_read() {
    m_str_term = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(124, false, true, true), std::string("ASCII"));
    m_str_limit = kaitai::kstream::bytes_to_str(m__io->read_bytes(4), std::string("ASCII"));
    m_str_eos = kaitai::kstream::bytes_to_str(m__io->read_bytes_full(), std::string("ASCII"));
}

combine_str_t::~combine_str_t() {
    _cleanUp();
}

void combine_str_t::_cleanUp() {
}

std::string combine_str_t::limit_or_calc_bytes() {
    if (f_limit_or_calc_bytes)
        return m_limit_or_calc_bytes;
    m_limit_or_calc_bytes = ((true) ? (str_limit()) : (str_calc_bytes()));
    f_limit_or_calc_bytes = true;
    return m_limit_or_calc_bytes;
}

std::string combine_str_t::limit_or_calc() {
    if (f_limit_or_calc)
        return m_limit_or_calc;
    m_limit_or_calc = ((false) ? (str_limit()) : (str_calc()));
    f_limit_or_calc = true;
    return m_limit_or_calc;
}

std::string combine_str_t::term_or_limit() {
    if (f_term_or_limit)
        return m_term_or_limit;
    m_term_or_limit = ((true) ? (str_term()) : (str_limit()));
    f_term_or_limit = true;
    return m_term_or_limit;
}

std::string combine_str_t::limit_or_eos() {
    if (f_limit_or_eos)
        return m_limit_or_eos;
    m_limit_or_eos = ((true) ? (str_limit()) : (str_eos()));
    f_limit_or_eos = true;
    return m_limit_or_eos;
}

std::string combine_str_t::calc_or_calc_bytes() {
    if (f_calc_or_calc_bytes)
        return m_calc_or_calc_bytes;
    m_calc_or_calc_bytes = ((false) ? (str_calc()) : (str_calc_bytes()));
    f_calc_or_calc_bytes = true;
    return m_calc_or_calc_bytes;
}

std::string combine_str_t::str_calc_bytes() {
    if (f_str_calc_bytes)
        return m_str_calc_bytes;
    m_str_calc_bytes = kaitai::kstream::bytes_to_str(calc_bytes(), std::string("ASCII"));
    f_str_calc_bytes = true;
    return m_str_calc_bytes;
}

std::string combine_str_t::eos_or_calc() {
    if (f_eos_or_calc)
        return m_eos_or_calc;
    m_eos_or_calc = ((false) ? (str_eos()) : (str_calc()));
    f_eos_or_calc = true;
    return m_eos_or_calc;
}

std::string combine_str_t::term_or_calc() {
    if (f_term_or_calc)
        return m_term_or_calc;
    m_term_or_calc = ((true) ? (str_term()) : (str_calc()));
    f_term_or_calc = true;
    return m_term_or_calc;
}

std::string combine_str_t::term_or_calc_bytes() {
    if (f_term_or_calc_bytes)
        return m_term_or_calc_bytes;
    m_term_or_calc_bytes = ((false) ? (str_term()) : (str_calc_bytes()));
    f_term_or_calc_bytes = true;
    return m_term_or_calc_bytes;
}

std::string combine_str_t::term_or_eos() {
    if (f_term_or_eos)
        return m_term_or_eos;
    m_term_or_eos = ((false) ? (str_term()) : (str_eos()));
    f_term_or_eos = true;
    return m_term_or_eos;
}

std::string combine_str_t::str_calc() {
    if (f_str_calc)
        return m_str_calc;
    m_str_calc = std::string("bar");
    f_str_calc = true;
    return m_str_calc;
}

std::string combine_str_t::eos_or_calc_bytes() {
    if (f_eos_or_calc_bytes)
        return m_eos_or_calc_bytes;
    m_eos_or_calc_bytes = ((true) ? (str_eos()) : (str_calc_bytes()));
    f_eos_or_calc_bytes = true;
    return m_eos_or_calc_bytes;
}

std::string combine_str_t::calc_bytes() {
    if (f_calc_bytes)
        return m_calc_bytes;
    m_calc_bytes = std::string("\x62\x61\x7A", 3);
    f_calc_bytes = true;
    return m_calc_bytes;
}
