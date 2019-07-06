#ifndef ENUM_IF_H_
#define ENUM_IF_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"

#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class enum_if_t : public kaitai::kstruct {

public:
    class operation_t;
    class arg_tuple_t;
    class arg_str_t;

    enum opcodes_t {
        OPCODES_A_STRING = 83,
        OPCODES_A_TUPLE = 84
    };

    enum_if_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, enum_if_t* p__root = 0);

private:
    void _read();

public:
    ~enum_if_t();

    class operation_t : public kaitai::kstruct {

    public:

        operation_t(kaitai::kstream* p__io, enum_if_t* p__parent = 0, enum_if_t* p__root = 0);

    private:
        void _read();

    public:
        ~operation_t();

    private:
        opcodes_t m_opcode;
        arg_tuple_t* m_arg_tuple;
        bool n_arg_tuple;

    public:
        bool _is_null_arg_tuple() { arg_tuple(); return n_arg_tuple; };

    private:
        arg_str_t* m_arg_str;
        bool n_arg_str;

    public:
        bool _is_null_arg_str() { arg_str(); return n_arg_str; };

    private:
        enum_if_t* m__root;
        enum_if_t* m__parent;

    public:
        opcodes_t opcode() const { return m_opcode; }
        arg_tuple_t* arg_tuple() const { return m_arg_tuple; }
        arg_str_t* arg_str() const { return m_arg_str; }
        enum_if_t* _root() const { return m__root; }
        enum_if_t* _parent() const { return m__parent; }
    };

    class arg_tuple_t : public kaitai::kstruct {

    public:

        arg_tuple_t(kaitai::kstream* p__io, enum_if_t::operation_t* p__parent = 0, enum_if_t* p__root = 0);

    private:
        void _read();

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

    class arg_str_t : public kaitai::kstruct {

    public:

        arg_str_t(kaitai::kstream* p__io, enum_if_t::operation_t* p__parent = 0, enum_if_t* p__root = 0);

    private:
        void _read();

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

private:
    operation_t* m_op1;
    operation_t* m_op2;
    operation_t* m_op3;
    enum_if_t* m__root;
    kaitai::kstruct* m__parent;

public:
    operation_t* op1() const { return m_op1; }
    operation_t* op2() const { return m_op2; }
    operation_t* op3() const { return m_op3; }
    enum_if_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // ENUM_IF_H_
