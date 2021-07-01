#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class expr_str_encodings_t : public kaitai::kstruct {

public:

    expr_str_encodings_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, expr_str_encodings_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~expr_str_encodings_t();

private:
    bool f_str4_gt_str_from_bytes;
    bool m_str4_gt_str_from_bytes;

public:
    bool str4_gt_str_from_bytes();

private:
    bool f_str1_eq;
    bool m_str1_eq;

public:
    bool str1_eq();

private:
    bool f_str4_eq;
    bool m_str4_eq;

public:
    bool str4_eq();

private:
    bool f_str3_eq_str2;
    bool m_str3_eq_str2;

public:
    bool str3_eq_str2();

private:
    bool f_str4_gt_str_calc;
    bool m_str4_gt_str_calc;

public:
    bool str4_gt_str_calc();

private:
    bool f_str2_eq;
    bool m_str2_eq;

public:
    bool str2_eq();

private:
    bool f_str3_eq;
    bool m_str3_eq;

public:
    bool str3_eq();

private:
    uint16_t m_len_of_1;
    std::string m_str1;
    uint16_t m_len_of_2;
    std::string m_str2;
    uint16_t m_len_of_3;
    std::string m_str3;
    uint16_t m_len_of_4;
    std::string m_str4;
    expr_str_encodings_t* m__root;
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
    expr_str_encodings_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
