#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class if_struct_t : public kaitai::kstruct {

public:
    class operation_t;
    class arg_tuple_t;
    class arg_str_t;

    if_struct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, if_struct_t* p__root = nullptr);

private:
    void _read();

public:
    ~if_struct_t();
    void _cleanUp();

    class operation_t : public kaitai::kstruct {

    public:

        operation_t(kaitai::kstream* p__io, if_struct_t* p__parent = nullptr, if_struct_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~operation_t();
        void _cleanUp();

    private:
        uint8_t m_opcode;
        std::unique_ptr<arg_tuple_t> m_arg_tuple;
        bool n_arg_tuple;

    public:
        bool _is_null_arg_tuple() { arg_tuple(); return n_arg_tuple; };

    private:
        std::unique_ptr<arg_str_t> m_arg_str;
        bool n_arg_str;

    public:
        bool _is_null_arg_str() { arg_str(); return n_arg_str; };

    private:
        if_struct_t* m__root;
        if_struct_t* m__parent;

    public:
        uint8_t opcode() const { return m_opcode; }
        arg_tuple_t* arg_tuple() const { return m_arg_tuple.get(); }
        arg_str_t* arg_str() const { return m_arg_str.get(); }
        if_struct_t* _root() const { return m__root; }
        if_struct_t* _parent() const { return m__parent; }
    };

    class arg_tuple_t : public kaitai::kstruct {

    public:

        arg_tuple_t(kaitai::kstream* p__io, if_struct_t::operation_t* p__parent = nullptr, if_struct_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~arg_tuple_t();
        void _cleanUp();

    private:
        uint8_t m_num1;
        uint8_t m_num2;
        if_struct_t* m__root;
        if_struct_t::operation_t* m__parent;

    public:
        uint8_t num1() const { return m_num1; }
        uint8_t num2() const { return m_num2; }
        if_struct_t* _root() const { return m__root; }
        if_struct_t::operation_t* _parent() const { return m__parent; }
    };

    class arg_str_t : public kaitai::kstruct {

    public:

        arg_str_t(kaitai::kstream* p__io, if_struct_t::operation_t* p__parent = nullptr, if_struct_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~arg_str_t();
        void _cleanUp();

    private:
        uint8_t m_len;
        std::string m_str;
        if_struct_t* m__root;
        if_struct_t::operation_t* m__parent;

    public:
        uint8_t len() const { return m_len; }
        std::string str() const { return m_str; }
        if_struct_t* _root() const { return m__root; }
        if_struct_t::operation_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<operation_t> m_op1;
    std::unique_ptr<operation_t> m_op2;
    std::unique_ptr<operation_t> m_op3;
    if_struct_t* m__root;
    kaitai::kstruct* m__parent;

public:
    operation_t* op1() const { return m_op1.get(); }
    operation_t* op2() const { return m_op2.get(); }
    operation_t* op3() const { return m_op3.get(); }
    if_struct_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
