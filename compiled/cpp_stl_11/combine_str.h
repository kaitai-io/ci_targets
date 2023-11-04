#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class combine_str_t : public kaitai::kstruct {

public:

    combine_str_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, combine_str_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~combine_str_t();

private:
    bool f_limit_or_calc_bytes;
    std::string m_limit_or_calc_bytes;

public:
    std::string limit_or_calc_bytes();

private:
    bool f_limit_or_calc;
    std::string m_limit_or_calc;

public:
    std::string limit_or_calc();

private:
    bool f_term_or_limit;
    std::string m_term_or_limit;

public:
    std::string term_or_limit();

private:
    bool f_limit_or_eos;
    std::string m_limit_or_eos;

public:
    std::string limit_or_eos();

private:
    bool f_calc_or_calc_bytes;
    std::string m_calc_or_calc_bytes;

public:
    std::string calc_or_calc_bytes();

private:
    bool f_str_calc_bytes;
    std::string m_str_calc_bytes;

public:
    std::string str_calc_bytes();

private:
    bool f_eos_or_calc;
    std::string m_eos_or_calc;

public:
    std::string eos_or_calc();

private:
    bool f_term_or_calc;
    std::string m_term_or_calc;

public:
    std::string term_or_calc();

private:
    bool f_term_or_calc_bytes;
    std::string m_term_or_calc_bytes;

public:
    std::string term_or_calc_bytes();

private:
    bool f_term_or_eos;
    std::string m_term_or_eos;

public:
    std::string term_or_eos();

private:
    bool f_str_calc;
    std::string m_str_calc;

public:
    std::string str_calc();

private:
    bool f_eos_or_calc_bytes;
    std::string m_eos_or_calc_bytes;

public:
    std::string eos_or_calc_bytes();

private:
    bool f_calc_bytes;
    std::string m_calc_bytes;

public:
    std::string calc_bytes();

private:
    std::string m_str_term;
    std::string m_str_limit;
    std::string m_str_eos;
    combine_str_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string str_term() const { return m_str_term; }
    std::string str_limit() const { return m_str_limit; }
    std::string str_eos() const { return m_str_eos; }
    combine_str_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
