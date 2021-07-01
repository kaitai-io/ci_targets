// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_str_encodings.h"

expr_str_encodings_t::expr_str_encodings_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_str_encodings_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_str4_gt_str_from_bytes = false;
    f_str1_eq = false;
    f_str4_eq = false;
    f_str3_eq_str2 = false;
    f_str4_gt_str_calc = false;
    f_str2_eq = false;
    f_str3_eq = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void expr_str_encodings_t::_read() {
    m_len_of_1 = m__io->read_u2le();
    m_str1 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_1()), std::string("ASCII"));
    m_len_of_2 = m__io->read_u2le();
    m_str2 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_2()), std::string("UTF-8"));
    m_len_of_3 = m__io->read_u2le();
    m_str3 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_3()), std::string("SJIS"));
    m_len_of_4 = m__io->read_u2le();
    m_str4 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_4()), std::string("CP437"));
}

expr_str_encodings_t::~expr_str_encodings_t() {
    _clean_up();
}

void expr_str_encodings_t::_clean_up() {
}

bool expr_str_encodings_t::str4_gt_str_from_bytes() {
    if (f_str4_gt_str_from_bytes)
        return m_str4_gt_str_from_bytes;
    m_str4_gt_str_from_bytes = (str4().compare(kaitai::kstream::bytes_to_str(std::string("\xB4", 1), std::string("CP437"))) > 0);
    f_str4_gt_str_from_bytes = true;
    return m_str4_gt_str_from_bytes;
}

bool expr_str_encodings_t::str1_eq() {
    if (f_str1_eq)
        return m_str1_eq;
    m_str1_eq = str1() == (std::string("Some ASCII"));
    f_str1_eq = true;
    return m_str1_eq;
}

bool expr_str_encodings_t::str4_eq() {
    if (f_str4_eq)
        return m_str4_eq;
    m_str4_eq = str4() == (std::string("\u2591\u2592\u2593"));
    f_str4_eq = true;
    return m_str4_eq;
}

bool expr_str_encodings_t::str3_eq_str2() {
    if (f_str3_eq_str2)
        return m_str3_eq_str2;
    m_str3_eq_str2 = str3() == (str2());
    f_str3_eq_str2 = true;
    return m_str3_eq_str2;
}

bool expr_str_encodings_t::str4_gt_str_calc() {
    if (f_str4_gt_str_calc)
        return m_str4_gt_str_calc;
    m_str4_gt_str_calc = (str4().compare(std::string("\u2524")) > 0);
    f_str4_gt_str_calc = true;
    return m_str4_gt_str_calc;
}

bool expr_str_encodings_t::str2_eq() {
    if (f_str2_eq)
        return m_str2_eq;
    m_str2_eq = str2() == (std::string("\u3053\u3093\u306b\u3061\u306f"));
    f_str2_eq = true;
    return m_str2_eq;
}

bool expr_str_encodings_t::str3_eq() {
    if (f_str3_eq)
        return m_str3_eq;
    m_str3_eq = str3() == (std::string("\u3053\u3093\u306b\u3061\u306f"));
    f_str3_eq = true;
    return m_str3_eq;
}
