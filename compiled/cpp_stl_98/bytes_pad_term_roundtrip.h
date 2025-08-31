#ifndef BYTES_PAD_TERM_ROUNDTRIP_H_
#define BYTES_PAD_TERM_ROUNDTRIP_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class bytes_pad_term_roundtrip_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class bytes_pad_term_roundtrip_t : public kaitai::kstruct {

public:

    bytes_pad_term_roundtrip_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, bytes_pad_term_roundtrip_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~bytes_pad_term_roundtrip_t();

private:
    std::string m_str_pad;
    std::string m_str_term;
    std::string m_str_term_and_pad;
    std::string m_str_term_include;
    bytes_pad_term_roundtrip_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string str_pad() const { return m_str_pad; }
    std::string str_term() const { return m_str_term; }
    std::string str_term_and_pad() const { return m_str_term_and_pad; }
    std::string str_term_include() const { return m_str_term_include; }
    bytes_pad_term_roundtrip_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // BYTES_PAD_TERM_ROUNDTRIP_H_
