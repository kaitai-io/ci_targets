#ifndef PROCESS_BYTES_PAD_TERM_H_
#define PROCESS_BYTES_PAD_TERM_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class process_bytes_pad_term_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class process_bytes_pad_term_t : public kaitai::kstruct {

public:

    process_bytes_pad_term_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, process_bytes_pad_term_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~process_bytes_pad_term_t();

private:
    std::string m_str_pad;
    std::string m_str_term;
    std::string m_str_term_and_pad;
    std::string m_str_term_include;
    process_bytes_pad_term_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_str_pad;
    std::string m__raw_str_term;
    std::string m__raw_str_term_and_pad;
    std::string m__raw_str_term_include;

public:
    std::string str_pad() const { return m_str_pad; }
    std::string str_term() const { return m_str_term; }
    std::string str_term_and_pad() const { return m_str_term_and_pad; }
    std::string str_term_include() const { return m_str_term_include; }
    process_bytes_pad_term_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_str_pad() const { return m__raw_str_pad; }
    std::string _raw_str_term() const { return m__raw_str_term; }
    std::string _raw_str_term_and_pad() const { return m__raw_str_term_and_pad; }
    std::string _raw_str_term_include() const { return m__raw_str_term_include; }
};

#endif  // PROCESS_BYTES_PAD_TERM_H_
