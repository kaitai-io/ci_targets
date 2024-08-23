#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class enum_if_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <set>
#include <type_traits>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class enum_if_t : public kaitai::kstruct {

public:
    class arg_str_t;
    class arg_tuple_t;
    class operation_t;

    enum opcodes_t {
        OPCODES_A_STRING = 83,
        OPCODES_A_TUPLE = 84
    };
    static const std::set<std::underlying_type<opcodes_t>::type> _values_opcodes_t;

    enum_if_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, enum_if_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~enum_if_t();

    class arg_str_t : public kaitai::kstruct {

    public:

        arg_str_t(kaitai::kstream* p__io, enum_if_t::operation_t* p__parent = nullptr, enum_if_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~arg_str_t();

    private:
        uint8_t m_len;
        std::string m_str;
        enum_if_t* m__root;
        enum_if_t::operation_t* m__parent;

    public:
        uint8_t len() const { return m_len; }
        std::string str() const { return m_str; }
        enum_if_t* _root() const { return m__root; }
        enum_if_t::operation_t* _parent() const { return m__parent; }
    };

    class arg_tuple_t : public kaitai::kstruct {

    public:

        arg_tuple_t(kaitai::kstream* p__io, enum_if_t::operation_t* p__parent = nullptr, enum_if_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~arg_tuple_t();

    private:
        uint8_t m_num1;
        uint8_t m_num2;
        enum_if_t* m__root;
        enum_if_t::operation_t* m__parent;

    public:
        uint8_t num1() const { return m_num1; }
        uint8_t num2() const { return m_num2; }
        enum_if_t* _root() const { return m__root; }
        enum_if_t::operation_t* _parent() const { return m__parent; }
    };

    class operation_t : public kaitai::kstruct {

    public:

        operation_t(kaitai::kstream* p__io, enum_if_t* p__parent = nullptr, enum_if_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~operation_t();

    private:
        opcodes_t m_opcode;
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
        enum_if_t* m__root;
        enum_if_t* m__parent;

    public:
        opcodes_t opcode() const { return m_opcode; }
        arg_tuple_t* arg_tuple() const { return m_arg_tuple.get(); }
        arg_str_t* arg_str() const { return m_arg_str.get(); }
        enum_if_t* _root() const { return m__root; }
        enum_if_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<operation_t> m_op1;
    std::unique_ptr<operation_t> m_op2;
    std::unique_ptr<operation_t> m_op3;
    enum_if_t* m__root;
    kaitai::kstruct* m__parent;

public:
    operation_t* op1() const { return m_op1.get(); }
    operation_t* op2() const { return m_op2.get(); }
    operation_t* op3() const { return m_op3.get(); }
    enum_if_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
