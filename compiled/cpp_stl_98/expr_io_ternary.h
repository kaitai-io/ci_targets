#ifndef EXPR_IO_TERNARY_H_
#define EXPR_IO_TERNARY_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class expr_io_ternary_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class expr_io_ternary_t : public kaitai::kstruct {

public:
    class one_t;
    class two_t;

    expr_io_ternary_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, expr_io_ternary_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~expr_io_ternary_t();

    class one_t : public kaitai::kstruct {

    public:

        one_t(kaitai::kstream* p__io, expr_io_ternary_t* p__parent = 0, expr_io_ternary_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~one_t();

    private:
        uint8_t m_one;
        expr_io_ternary_t* m__root;
        expr_io_ternary_t* m__parent;

    public:
        uint8_t one() const { return m_one; }
        expr_io_ternary_t* _root() const { return m__root; }
        expr_io_ternary_t* _parent() const { return m__parent; }
    };

    class two_t : public kaitai::kstruct {

    public:

        two_t(kaitai::kstream* p__io, expr_io_ternary_t* p__parent = 0, expr_io_ternary_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~two_t();

    private:
        uint8_t m_two;
        expr_io_ternary_t* m__root;
        expr_io_ternary_t* m__parent;

    public:
        uint8_t two() const { return m_two; }
        expr_io_ternary_t* _root() const { return m__root; }
        expr_io_ternary_t* _parent() const { return m__parent; }
    };

private:
    bool f_one_or_two_io;
    kaitai::kstream* m_one_or_two_io;

public:
    kaitai::kstream* one_or_two_io();

private:
    bool f_one_or_two_io_size1;
    int32_t m_one_or_two_io_size1;

public:
    int32_t one_or_two_io_size1();

private:
    bool f_one_or_two_io_size2;
    int32_t m_one_or_two_io_size2;

public:
    int32_t one_or_two_io_size2();

private:
    bool f_one_or_two_io_size_add_3;
    int32_t m_one_or_two_io_size_add_3;

public:
    int32_t one_or_two_io_size_add_3();

private:
    bool f_one_or_two_obj;
    kaitai::kstruct* m_one_or_two_obj;

public:
    kaitai::kstruct* one_or_two_obj();

private:
    uint8_t m_flag;
    one_t* m_obj1;
    two_t* m_obj2;
    expr_io_ternary_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_obj1;
    kaitai::kstream* m__io__raw_obj1;
    std::string m__raw_obj2;
    kaitai::kstream* m__io__raw_obj2;

public:
    uint8_t flag() const { return m_flag; }
    one_t* obj1() const { return m_obj1; }
    two_t* obj2() const { return m_obj2; }
    expr_io_ternary_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_obj1() const { return m__raw_obj1; }
    kaitai::kstream* _io__raw_obj1() const { return m__io__raw_obj1; }
    std::string _raw_obj2() const { return m__raw_obj2; }
    kaitai::kstream* _io__raw_obj2() const { return m__io__raw_obj2; }
};

#endif  // EXPR_IO_TERNARY_H_
