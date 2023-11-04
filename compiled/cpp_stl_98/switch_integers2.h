#ifndef SWITCH_INTEGERS2_H_
#define SWITCH_INTEGERS2_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class switch_integers2_t : public kaitai::kstruct {

public:

    switch_integers2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, switch_integers2_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~switch_integers2_t();

private:
    bool f_len_mod_str;
    std::string m_len_mod_str;

public:
    std::string len_mod_str();

private:
    uint8_t m_code;
    uint64_t m_len;
    bool n_len;

public:
    bool _is_null_len() { len(); return n_len; };

private:
    std::string m_ham;
    uint8_t m_padding;
    bool n_padding;

public:
    bool _is_null_padding() { padding(); return n_padding; };

private:
    switch_integers2_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t code() const { return m_code; }
    uint64_t len() const { return m_len; }
    std::string ham() const { return m_ham; }
    uint8_t padding() const { return m_padding; }
    switch_integers2_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // SWITCH_INTEGERS2_H_
