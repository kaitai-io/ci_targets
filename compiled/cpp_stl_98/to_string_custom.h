#ifndef TO_STRING_CUSTOM_H_
#define TO_STRING_CUSTOM_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class to_string_custom_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class to_string_custom_t : public kaitai::kstruct {

public:

    to_string_custom_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, to_string_custom_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~to_string_custom_t();

private:
    std::string m_s1;
    std::string m_s2;
    to_string_custom_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string s1() const { return m_s1; }
    std::string s2() const { return m_s2; }
    to_string_custom_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _to_string() const;
    friend std::ostream& operator<<(std::ostream& os, const to_string_custom_t& obj);
};

#endif  // TO_STRING_CUSTOM_H_
