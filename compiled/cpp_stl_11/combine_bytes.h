#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class combine_bytes_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class combine_bytes_t : public kaitai::kstruct {

public:

    combine_bytes_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, combine_bytes_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~combine_bytes_t();
    std::string bytes_calc();
    std::string eos_or_calc();
    std::string limit_or_calc();
    std::string limit_or_eos();
    std::string term_or_calc();
    std::string term_or_eos();
    std::string term_or_limit();
    std::string bytes_term() const { return m_bytes_term; }
    std::string bytes_limit() const { return m_bytes_limit; }
    std::string bytes_eos() const { return m_bytes_eos; }
    combine_bytes_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_bytes_calc;
    std::string m_bytes_calc;
    bool f_eos_or_calc;
    std::string m_eos_or_calc;
    bool f_limit_or_calc;
    std::string m_limit_or_calc;
    bool f_limit_or_eos;
    std::string m_limit_or_eos;
    bool f_term_or_calc;
    std::string m_term_or_calc;
    bool f_term_or_eos;
    std::string m_term_or_eos;
    bool f_term_or_limit;
    std::string m_term_or_limit;
    std::string m_bytes_term;
    std::string m_bytes_limit;
    std::string m_bytes_eos;
    combine_bytes_t* m__root;
    kaitai::kstruct* m__parent;
};
