#ifndef STR_ENCODINGS_DEFAULT_H_
#define STR_ENCODINGS_DEFAULT_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class strEncodingsDefault_t : public kaitai::kstruct {

public:
    class subtype_t;

    strEncodingsDefault_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, strEncodingsDefault_t* p__root = 0);

private:
    void _read();

public:
    ~strEncodingsDefault_t();

    class subtype_t : public kaitai::kstruct {

    public:

        subtype_t(kaitai::kstream* p__io, strEncodingsDefault_t* p__parent = 0, strEncodingsDefault_t* p__root = 0);

    private:
        void _read();

    public:
        ~subtype_t();

    private:
        uint16_t m_len_of_2;
        std::string m_str2;
        uint16_t m_len_of_3;
        std::string m_str3;
        uint16_t m_len_of_4;
        std::string m_str4;
        strEncodingsDefault_t* m__root;
        strEncodingsDefault_t* m__parent;

    public:
        uint16_t len_of_2() const { return m_len_of_2; }
        std::string str2() const { return m_str2; }
        uint16_t len_of_3() const { return m_len_of_3; }
        std::string str3() const { return m_str3; }
        uint16_t len_of_4() const { return m_len_of_4; }
        std::string str4() const { return m_str4; }
        strEncodingsDefault_t* _root() const { return m__root; }
        strEncodingsDefault_t* _parent() const { return m__parent; }
    };

private:
    uint16_t m_len_of_1;
    std::string m_str1;
    subtype_t* m_rest;
    strEncodingsDefault_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint16_t len_of_1() const { return m_len_of_1; }
    std::string str1() const { return m_str1; }
    subtype_t* rest() const { return m_rest; }
    strEncodingsDefault_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // STR_ENCODINGS_DEFAULT_H_
