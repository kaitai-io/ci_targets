#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class str_encodings_default_t : public kaitai::kstruct {

public:
    class subtype_t;

    str_encodings_default_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, str_encodings_default_t* p__root = nullptr);

private:
    void _read();

public:
    ~str_encodings_default_t();
    void _clean_up();

    class subtype_t : public kaitai::kstruct {

    public:

        subtype_t(kaitai::kstream* p__io, str_encodings_default_t* p__parent = nullptr, str_encodings_default_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~subtype_t();
        void _clean_up();

    private:
        uint16_t m_len_of_2;
        std::string m_str2;
        uint16_t m_len_of_3;
        std::string m_str3;
        uint16_t m_len_of_4;
        std::string m_str4;
        str_encodings_default_t* m__root;
        str_encodings_default_t* m__parent;

    public:
        uint16_t len_of_2() const { return m_len_of_2; }
        std::string str2() const { return m_str2; }
        uint16_t len_of_3() const { return m_len_of_3; }
        std::string str3() const { return m_str3; }
        uint16_t len_of_4() const { return m_len_of_4; }
        std::string str4() const { return m_str4; }
        str_encodings_default_t* _root() const { return m__root; }
        str_encodings_default_t* _parent() const { return m__parent; }
    };

private:
    uint16_t m_len_of_1;
    std::string m_str1;
    std::unique_ptr<subtype_t> m_rest;
    str_encodings_default_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint16_t len_of_1() const { return m_len_of_1; }
    std::string str1() const { return m_str1; }
    subtype_t* rest() const { return m_rest.get(); }
    str_encodings_default_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
