#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class str_encodings_escaping_to_s_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class str_encodings_escaping_to_s_t : public kaitai::kstruct {

public:

    str_encodings_escaping_to_s_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, str_encodings_escaping_to_s_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~str_encodings_escaping_to_s_t();

private:
    bool f_str1;
    std::string m_str1;

public:
    std::string str1();

private:
    bool f_str2;
    std::string m_str2;

public:
    std::string str2();

private:
    bool f_str3;
    std::string m_str3;

public:
    std::string str3();

private:
    bool f_str4;
    std::string m_str4;

public:
    std::string str4();

private:
    uint16_t m_len_of_1;
    std::string m_str1_raw;
    uint16_t m_len_of_2;
    std::string m_str2_raw;
    uint16_t m_len_of_3;
    std::string m_str3_raw;
    uint16_t m_len_of_4;
    std::string m_str4_raw;
    str_encodings_escaping_to_s_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint16_t len_of_1() const { return m_len_of_1; }
    std::string str1_raw() const { return m_str1_raw; }
    uint16_t len_of_2() const { return m_len_of_2; }
    std::string str2_raw() const { return m_str2_raw; }
    uint16_t len_of_3() const { return m_len_of_3; }
    std::string str3_raw() const { return m_str3_raw; }
    uint16_t len_of_4() const { return m_len_of_4; }
    std::string str4_raw() const { return m_str4_raw; }
    str_encodings_escaping_to_s_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
