// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_array.h"
#include <algorithm>

expr_array_t::expr_array_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_array_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_aint = nullptr;
    m_afloat = nullptr;
    m_astr = nullptr;
    f_afloat_min = false;
    f_astr_first = false;
    f_astr_max = false;
    f_afloat_last = false;
    f_afloat_size = false;
    f_astr_size = false;
    f_afloat_first = false;
    f_astr_min = false;
    f_aint_size = false;
    f_aint_last = false;
    f_astr_last = false;
    f_aint_min = false;
    f_afloat_max = false;
    f_aint_max = false;
    f_aint_first = false;
    _read();
}

void expr_array_t::_read() {
    m_aint = std::unique_ptr<std::vector<uint32_t>>(new std::vector<uint32_t>());
    const int l_aint = 4;
    for (int i = 0; i < l_aint; i++) {
        m_aint->push_back(std::move(m__io->read_u4le()));
    }
    m_afloat = std::unique_ptr<std::vector<double>>(new std::vector<double>());
    const int l_afloat = 3;
    for (int i = 0; i < l_afloat; i++) {
        m_afloat->push_back(std::move(m__io->read_f8le()));
    }
    m_astr = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    const int l_astr = 3;
    for (int i = 0; i < l_astr; i++) {
        m_astr->push_back(std::move(kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), "UTF-8")));
    }
}

expr_array_t::~expr_array_t() {
    _clean_up();
}

void expr_array_t::_clean_up() {
}

double expr_array_t::afloat_min() {
    if (f_afloat_min)
        return m_afloat_min;
    m_afloat_min = *std::min_element(afloat()->begin(), afloat()->end());
    f_afloat_min = true;
    return m_afloat_min;
}

std::string expr_array_t::astr_first() {
    if (f_astr_first)
        return m_astr_first;
    m_astr_first = astr()->front();
    f_astr_first = true;
    return m_astr_first;
}

std::string expr_array_t::astr_max() {
    if (f_astr_max)
        return m_astr_max;
    m_astr_max = *std::max_element(astr()->begin(), astr()->end());
    f_astr_max = true;
    return m_astr_max;
}

double expr_array_t::afloat_last() {
    if (f_afloat_last)
        return m_afloat_last;
    m_afloat_last = afloat()->back();
    f_afloat_last = true;
    return m_afloat_last;
}

int32_t expr_array_t::afloat_size() {
    if (f_afloat_size)
        return m_afloat_size;
    m_afloat_size = afloat()->size();
    f_afloat_size = true;
    return m_afloat_size;
}

int32_t expr_array_t::astr_size() {
    if (f_astr_size)
        return m_astr_size;
    m_astr_size = astr()->size();
    f_astr_size = true;
    return m_astr_size;
}

double expr_array_t::afloat_first() {
    if (f_afloat_first)
        return m_afloat_first;
    m_afloat_first = afloat()->front();
    f_afloat_first = true;
    return m_afloat_first;
}

std::string expr_array_t::astr_min() {
    if (f_astr_min)
        return m_astr_min;
    m_astr_min = *std::min_element(astr()->begin(), astr()->end());
    f_astr_min = true;
    return m_astr_min;
}

int32_t expr_array_t::aint_size() {
    if (f_aint_size)
        return m_aint_size;
    m_aint_size = aint()->size();
    f_aint_size = true;
    return m_aint_size;
}

uint32_t expr_array_t::aint_last() {
    if (f_aint_last)
        return m_aint_last;
    m_aint_last = aint()->back();
    f_aint_last = true;
    return m_aint_last;
}

std::string expr_array_t::astr_last() {
    if (f_astr_last)
        return m_astr_last;
    m_astr_last = astr()->back();
    f_astr_last = true;
    return m_astr_last;
}

uint32_t expr_array_t::aint_min() {
    if (f_aint_min)
        return m_aint_min;
    m_aint_min = *std::min_element(aint()->begin(), aint()->end());
    f_aint_min = true;
    return m_aint_min;
}

double expr_array_t::afloat_max() {
    if (f_afloat_max)
        return m_afloat_max;
    m_afloat_max = *std::max_element(afloat()->begin(), afloat()->end());
    f_afloat_max = true;
    return m_afloat_max;
}

uint32_t expr_array_t::aint_max() {
    if (f_aint_max)
        return m_aint_max;
    m_aint_max = *std::max_element(aint()->begin(), aint()->end());
    f_aint_max = true;
    return m_aint_max;
}

uint32_t expr_array_t::aint_first() {
    if (f_aint_first)
        return m_aint_first;
    m_aint_first = aint()->front();
    f_aint_first = true;
    return m_aint_first;
}
