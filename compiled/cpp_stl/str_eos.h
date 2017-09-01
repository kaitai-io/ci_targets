#ifndef STR_EOS_H_
#define STR_EOS_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <kaitai/kaitaistream.h>

#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class str_eos_t : public kaitai::kstruct {

public:

    str_eos_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, str_eos_t* p__root = 0);

private:
    void _read();

public:
    ~str_eos_t();

private:
    std::string m_str;
    str_eos_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string str() const { return m_str; }
    str_eos_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // STR_EOS_H_
