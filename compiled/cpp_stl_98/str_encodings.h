#ifndef STR_ENCODINGS_H_
#define STR_ENCODINGS_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class strEncodings_t : public kaitai::kstruct {

public:

    strEncodings_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, strEncodings_t* p__root = 0);

private:
    void _read();

public:
    ~strEncodings_t();

private:
    uint16_t m_len_of_1;
    std::string m_str1;
    uint16_t m_len_of_2;
    std::string m_str2;
    uint16_t m_len_of_3;
    std::string m_str3;
    uint16_t m_len_of_4;
    std::string m_str4;
    strEncodings_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint16_t len_of_1() const { return m_len_of_1; }
    std::string str1() const { return m_str1; }
    uint16_t len_of_2() const { return m_len_of_2; }
    std::string str2() const { return m_str2; }
    uint16_t len_of_3() const { return m_len_of_3; }
    std::string str3() const { return m_str3; }
    uint16_t len_of_4() const { return m_len_of_4; }
    std::string str4() const { return m_str4; }
    strEncodings_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // STR_ENCODINGS_H_
