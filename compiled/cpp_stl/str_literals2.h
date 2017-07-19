#ifndef STR_LITERALS2_H_
#define STR_LITERALS2_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <kaitai/kaitaistream.h>

#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class str_literals2_t : public kaitai::kstruct {

public:

    str_literals2_t(kaitai::kstream* p_io, kaitai::kstruct* p_parent = 0, str_literals2_t* p_root = 0);
    void _read();
    ~str_literals2_t();

private:
    bool f_dollar1;
    std::string m_dollar1;

public:
    std::string dollar1();

private:
    bool f_dollar2;
    std::string m_dollar2;

public:
    std::string dollar2();

private:
    bool f_hash;
    std::string m_hash;

public:
    std::string hash();

private:
    bool f_at_sign;
    std::string m_at_sign;

public:
    std::string at_sign();

private:
    str_literals2_t* m__root;
    kaitai::kstruct* m__parent;

public:
    str_literals2_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // STR_LITERALS2_H_
