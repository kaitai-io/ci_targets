// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_array.h"
#include <algorithm>

expr_array_t::expr_array_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_array_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_aint = 0;
    m_afloat = 0;
    m_astr = 0;
    f_afloat_first = false;
    f_afloat_last = false;
    f_afloat_max = false;
    f_afloat_min = false;
    f_afloat_size = false;
    f_aint_first = false;
    f_aint_last = false;
    f_aint_max = false;
    f_aint_min = false;
    f_aint_size = false;
    f_astr_first = false;
    f_astr_last = false;
    f_astr_max = false;
    f_astr_min = false;
    f_astr_size = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void expr_array_t::_read() {
    m_aint = new std::vector<uint32_t>();
    const int l_aint = 4;
    for (int i = 0; i < l_aint; i++) {
        m_aint->push_back(m__io->read_u4le());
    }
    m_afloat = new std::vector<double>();
    const int l_afloat = 3;
    for (int i = 0; i < l_afloat; i++) {
        m_afloat->push_back(m__io->read_f8le());
    }
    m_astr = new std::vector<std::string>();
    const int l_astr = 3;
    for (int i = 0; i < l_astr; i++) {
        m_astr->push_back(kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), "UTF-8"));
    }
}

expr_array_t::~expr_array_t() {
    _clean_up();
}

void expr_array_t::_clean_up() {
    if (m_aint) {
        delete m_aint; m_aint = 0;
    }
    if (m_afloat) {
        delete m_afloat; m_afloat = 0;
    }
    if (m_astr) {
        delete m_astr; m_astr = 0;
    }
}

double expr_array_t::afloat_first() {
    if (f_afloat_first)
        return m_afloat_first;
    f_afloat_first = true;
    m_afloat_first = afloat()->front();
    return m_afloat_first;
}

double expr_array_t::afloat_last() {
    if (f_afloat_last)
        return m_afloat_last;
    f_afloat_last = true;
    m_afloat_last = afloat()->back();
    return m_afloat_last;
}

double expr_array_t::afloat_max() {
    if (f_afloat_max)
        return m_afloat_max;
    f_afloat_max = true;
    m_afloat_max = *std::max_element(afloat()->begin(), afloat()->end());
    return m_afloat_max;
}

double expr_array_t::afloat_min() {
    if (f_afloat_min)
        return m_afloat_min;
    f_afloat_min = true;
    m_afloat_min = *std::min_element(afloat()->begin(), afloat()->end());
    return m_afloat_min;
}

int32_t expr_array_t::afloat_size() {
    if (f_afloat_size)
        return m_afloat_size;
    f_afloat_size = true;
    m_afloat_size = afloat()->size();
    return m_afloat_size;
}

uint32_t expr_array_t::aint_first() {
    if (f_aint_first)
        return m_aint_first;
    f_aint_first = true;
    m_aint_first = aint()->front();
    return m_aint_first;
}

uint32_t expr_array_t::aint_last() {
    if (f_aint_last)
        return m_aint_last;
    f_aint_last = true;
    m_aint_last = aint()->back();
    return m_aint_last;
}

uint32_t expr_array_t::aint_max() {
    if (f_aint_max)
        return m_aint_max;
    f_aint_max = true;
    m_aint_max = *std::max_element(aint()->begin(), aint()->end());
    return m_aint_max;
}

uint32_t expr_array_t::aint_min() {
    if (f_aint_min)
        return m_aint_min;
    f_aint_min = true;
    m_aint_min = *std::min_element(aint()->begin(), aint()->end());
    return m_aint_min;
}

int32_t expr_array_t::aint_size() {
    if (f_aint_size)
        return m_aint_size;
    f_aint_size = true;
    m_aint_size = aint()->size();
    return m_aint_size;
}

std::string expr_array_t::astr_first() {
    if (f_astr_first)
        return m_astr_first;
    f_astr_first = true;
    m_astr_first = astr()->front();
    return m_astr_first;
}

std::string expr_array_t::astr_last() {
    if (f_astr_last)
        return m_astr_last;
    f_astr_last = true;
    m_astr_last = astr()->back();
    return m_astr_last;
}

std::string expr_array_t::astr_max() {
    if (f_astr_max)
        return m_astr_max;
    f_astr_max = true;
    m_astr_max = *std::max_element(astr()->begin(), astr()->end());
    return m_astr_max;
}

std::string expr_array_t::astr_min() {
    if (f_astr_min)
        return m_astr_min;
    f_astr_min = true;
    m_astr_min = *std::min_element(astr()->begin(), astr()->end());
    return m_astr_min;
}

int32_t expr_array_t::astr_size() {
    if (f_astr_size)
        return m_astr_size;
    f_astr_size = true;
    m_astr_size = astr()->size();
    return m_astr_size;
}
