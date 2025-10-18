#ifndef COMBINE_STR_H_
#define COMBINE_STR_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class combine_str_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class combine_str_t : public kaitai::kstruct {

public:

    combine_str_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, combine_str_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~combine_str_t();
    std::string calc_bytes();
    std::string calc_or_calc_bytes();
    std::string eos_or_calc();
    std::string eos_or_calc_bytes();
    std::string limit_or_calc();
    std::string limit_or_calc_bytes();
    std::string limit_or_eos();
    std::string str_calc();
    std::string str_calc_bytes();
    std::string term_or_calc();
    std::string term_or_calc_bytes();
    std::string term_or_eos();
    std::string term_or_limit();
    std::string str_term() const { return m_str_term; }
    std::string str_limit() const { return m_str_limit; }
    std::string str_eos() const { return m_str_eos; }
    combine_str_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_calc_bytes;
    std::string m_calc_bytes;
    bool f_calc_or_calc_bytes;
    std::string m_calc_or_calc_bytes;
    bool f_eos_or_calc;
    std::string m_eos_or_calc;
    bool f_eos_or_calc_bytes;
    std::string m_eos_or_calc_bytes;
    bool f_limit_or_calc;
    std::string m_limit_or_calc;
    bool f_limit_or_calc_bytes;
    std::string m_limit_or_calc_bytes;
    bool f_limit_or_eos;
    std::string m_limit_or_eos;
    bool f_str_calc;
    std::string m_str_calc;
    bool f_str_calc_bytes;
    std::string m_str_calc_bytes;
    bool f_term_or_calc;
    std::string m_term_or_calc;
    bool f_term_or_calc_bytes;
    std::string m_term_or_calc_bytes;
    bool f_term_or_eos;
    std::string m_term_or_eos;
    bool f_term_or_limit;
    std::string m_term_or_limit;
    std::string m_str_term;
    std::string m_str_limit;
    std::string m_str_eos;
    combine_str_t* m__root;
    kaitai::kstruct* m__parent;
};

#endif  // COMBINE_STR_H_
