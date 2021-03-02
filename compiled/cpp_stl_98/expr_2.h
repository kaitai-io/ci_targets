#ifndef EXPR_2_H_
#define EXPR_2_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class expr_2_t : public kaitai::kstruct {

public:
    class mod_str_t;
    class tuple_t;

    expr_2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, expr_2_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~expr_2_t();

    class mod_str_t : public kaitai::kstruct {

    public:

        mod_str_t(kaitai::kstream* p__io, expr_2_t* p__parent = 0, expr_2_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~mod_str_t();

    private:
        bool f_len_mod;
        int32_t m_len_mod;

    public:
        int32_t len_mod();

    private:
        bool f_char5;
        std::string m_char5;

    public:
        std::string char5();

    private:
        bool f_tuple5;
        tuple_t* m_tuple5;

    public:
        tuple_t* tuple5();

    private:
        uint16_t m_len_orig;
        std::string m_str;
        tuple_t* m_rest;
        expr_2_t* m__root;
        expr_2_t* m__parent;
        std::string m__raw_rest;
        kaitai::kstream* m__io__raw_rest;

    public:
        uint16_t len_orig() const { return m_len_orig; }
        std::string str() const { return m_str; }
        tuple_t* rest() const { return m_rest; }
        expr_2_t* _root() const { return m__root; }
        expr_2_t* _parent() const { return m__parent; }
        std::string _raw_rest() const { return m__raw_rest; }
        kaitai::kstream* _io__raw_rest() const { return m__io__raw_rest; }
    };

    class tuple_t : public kaitai::kstruct {

    public:

        tuple_t(kaitai::kstream* p__io, expr_2_t::mod_str_t* p__parent = 0, expr_2_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~tuple_t();

    private:
        bool f_avg;
        int32_t m_avg;

    public:
        int32_t avg();

    private:
        uint8_t m_byte0;
        uint8_t m_byte1;
        uint8_t m_byte2;
        expr_2_t* m__root;
        expr_2_t::mod_str_t* m__parent;

    public:
        uint8_t byte0() const { return m_byte0; }
        uint8_t byte1() const { return m_byte1; }
        uint8_t byte2() const { return m_byte2; }
        expr_2_t* _root() const { return m__root; }
        expr_2_t::mod_str_t* _parent() const { return m__parent; }
    };

private:
    bool f_str1_len_mod;
    int32_t m_str1_len_mod;

public:
    int32_t str1_len_mod();

private:
    bool f_str1_len;
    int32_t m_str1_len;

public:
    int32_t str1_len();

private:
    bool f_str1_tuple5;
    tuple_t* m_str1_tuple5;

public:
    tuple_t* str1_tuple5();

private:
    bool f_str2_tuple5;
    tuple_t* m_str2_tuple5;

public:
    tuple_t* str2_tuple5();

private:
    bool f_str1_avg;
    int32_t m_str1_avg;

public:
    int32_t str1_avg();

private:
    bool f_str1_byte1;
    uint8_t m_str1_byte1;

public:
    uint8_t str1_byte1();

private:
    bool f_str1_char5;
    std::string m_str1_char5;

public:
    std::string str1_char5();

private:
    mod_str_t* m_str1;
    mod_str_t* m_str2;
    expr_2_t* m__root;
    kaitai::kstruct* m__parent;

public:
    mod_str_t* str1() const { return m_str1; }
    mod_str_t* str2() const { return m_str2; }
    expr_2_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // EXPR_2_H_
