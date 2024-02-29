// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "combine_bytes.h"

combine_bytes_t::combine_bytes_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, combine_bytes_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_bytes_calc = false;
    f_eos_or_calc = false;
    f_limit_or_calc = false;
    f_limit_or_eos = false;
    f_term_or_calc = false;
    f_term_or_eos = false;
    f_term_or_limit = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void combine_bytes_t::_read() {
    m_bytes_term = m__io->read_bytes_term(124, false, true, true);
    m_bytes_limit = m__io->read_bytes(4);
    m_bytes_eos = m__io->read_bytes_full();
}

combine_bytes_t::~combine_bytes_t() {
    _clean_up();
}

void combine_bytes_t::_clean_up() {
}

std::string combine_bytes_t::bytes_calc() {
    if (f_bytes_calc)
        return m_bytes_calc;
    m_bytes_calc = std::string("\x52\x6E\x44", 3);
    f_bytes_calc = true;
    return m_bytes_calc;
}

std::string combine_bytes_t::eos_or_calc() {
    if (f_eos_or_calc)
        return m_eos_or_calc;
    m_eos_or_calc = ((true) ? (bytes_eos()) : (bytes_calc()));
    f_eos_or_calc = true;
    return m_eos_or_calc;
}

std::string combine_bytes_t::limit_or_calc() {
    if (f_limit_or_calc)
        return m_limit_or_calc;
    m_limit_or_calc = ((false) ? (bytes_limit()) : (bytes_calc()));
    f_limit_or_calc = true;
    return m_limit_or_calc;
}

std::string combine_bytes_t::limit_or_eos() {
    if (f_limit_or_eos)
        return m_limit_or_eos;
    m_limit_or_eos = ((true) ? (bytes_limit()) : (bytes_eos()));
    f_limit_or_eos = true;
    return m_limit_or_eos;
}

std::string combine_bytes_t::term_or_calc() {
    if (f_term_or_calc)
        return m_term_or_calc;
    m_term_or_calc = ((true) ? (bytes_term()) : (bytes_calc()));
    f_term_or_calc = true;
    return m_term_or_calc;
}

std::string combine_bytes_t::term_or_eos() {
    if (f_term_or_eos)
        return m_term_or_eos;
    m_term_or_eos = ((false) ? (bytes_term()) : (bytes_eos()));
    f_term_or_eos = true;
    return m_term_or_eos;
}

std::string combine_bytes_t::term_or_limit() {
    if (f_term_or_limit)
        return m_term_or_limit;
    m_term_or_limit = ((true) ? (bytes_term()) : (bytes_limit()));
    f_term_or_limit = true;
    return m_term_or_limit;
}
