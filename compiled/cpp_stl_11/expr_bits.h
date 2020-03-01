#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class exprBits_t : public kaitai::kstruct {

public:
    class endianSwitch_t;

    enum items_t {
        ITEMS_FOO = 1,
        ITEMS_BAR = 2
    };

    exprBits_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, exprBits_t* p__root = nullptr);

private:
    void _read();

public:
    ~exprBits_t();

    class endianSwitch_t : public kaitai::kstruct {

    public:

        endianSwitch_t(kaitai::kstream* p__io, exprBits_t* p__parent = nullptr, exprBits_t* p__root = nullptr);

    private:
        int m__is_le;

    public:

    private:
        void _read();

    public:

    private:
        void _read_le();

    public:

    private:
        void _read_be();

    public:
        ~endianSwitch_t();

    private:
        int16_t m_foo;
        exprBits_t* m__root;
        exprBits_t* m__parent;

    public:
        int16_t foo() const { return m_foo; }
        exprBits_t* _root() const { return m__root; }
        exprBits_t* _parent() const { return m__parent; }
    };

private:
    bool f_enum_inst;
    items_t m_enum_inst;

public:
    items_t enum_inst();

private:
    bool f_inst_pos;
    int8_t m_inst_pos;

public:
    int8_t inst_pos();

private:
    items_t m_enum_seq;
    uint64_t m_a;
    std::string m_byte_size;
    std::unique_ptr<std::vector<int8_t>> m_repeat_expr;
    int8_t m_switch_on_type;
    bool n_switch_on_type;

public:
    bool _is_null_switch_on_type() { switch_on_type(); return n_switch_on_type; };

private:
    std::unique_ptr<endianSwitch_t> m_switch_on_endian;
    exprBits_t* m__root;
    kaitai::kstruct* m__parent;

public:
    items_t enum_seq() const { return m_enum_seq; }
    uint64_t a() const { return m_a; }
    std::string byte_size() const { return m_byte_size; }
    std::vector<int8_t>* repeat_expr() const { return m_repeat_expr.get(); }
    int8_t switch_on_type() const { return m_switch_on_type; }
    endianSwitch_t* switch_on_endian() const { return m_switch_on_endian.get(); }
    exprBits_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
