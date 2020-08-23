#ifndef COMBINE_BYTES_H_
#define COMBINE_BYTES_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class combine_bytes_t : public kaitai::kstruct {

public:

    combine_bytes_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, combine_bytes_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~combine_bytes_t();

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
    bool f_bytes_calc;
    std::string m_bytes_calc;

public:
    std::string bytes_calc();

private:
    bool f_term_or_eos;
    std::string m_term_or_eos;

public:
    std::string term_or_eos();

private:
    std::string m_bytes_term;
    std::string m_bytes_limit;
    std::string m_bytes_eos;
    combine_bytes_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string bytes_term() const { return m_bytes_term; }
    std::string bytes_limit() const { return m_bytes_limit; }
    std::string bytes_eos() const { return m_bytes_eos; }
    combine_bytes_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // COMBINE_BYTES_H_
