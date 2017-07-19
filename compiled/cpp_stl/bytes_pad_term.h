#ifndef BYTES_PAD_TERM_H_
#define BYTES_PAD_TERM_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <kaitai/kaitaistream.h>

#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class bytes_pad_term_t : public kaitai::kstruct {

public:

    bytes_pad_term_t(kaitai::kstream* p_io, kaitai::kstruct* p_parent = 0, bytes_pad_term_t* p_root = 0);
    void _read();
    ~bytes_pad_term_t();

private:
    std::string m_str_pad;
    std::string m_str_term;
    std::string m_str_term_and_pad;
    std::string m_str_term_include;
    bytes_pad_term_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string str_pad() const { return m_str_pad; }
    std::string str_term() const { return m_str_term; }
    std::string str_term_and_pad() const { return m_str_term_and_pad; }
    std::string str_term_include() const { return m_str_term_include; }
    bytes_pad_term_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // BYTES_PAD_TERM_H_
