#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class expr_bits_t : public kaitai::kstruct {

public:
    class endian_switch_t;

    enum items_t {
        ITEMS_FOO = 1,
        ITEMS_BAR = 2
    };

    expr_bits_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, expr_bits_t* p__root = nullptr);

private:
    void _read();

public:
    ~expr_bits_t();

    class endian_switch_t : public kaitai::kstruct {

    public:

        endian_switch_t(kaitai::kstream* p__io, expr_bits_t* p__parent = nullptr, expr_bits_t* p__root = nullptr);

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
        ~endian_switch_t();

    private:
        int16_t m_foo;
        expr_bits_t* m__root;
        expr_bits_t* m__parent;

    public:
        int16_t foo() const { return m_foo; }
        expr_bits_t* _root() const { return m__root; }
        expr_bits_t* _parent() const { return m__parent; }
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
    std::unique_ptr<endian_switch_t> m_switch_on_endian;
    expr_bits_t* m__root;
    kaitai::kstruct* m__parent;

public:
    items_t enum_seq() const { return m_enum_seq; }
    uint64_t a() const { return m_a; }
    std::string byte_size() const { return m_byte_size; }
    std::vector<int8_t>* repeat_expr() const { return m_repeat_expr.get(); }
    int8_t switch_on_type() const { return m_switch_on_type; }
    endian_switch_t* switch_on_endian() const { return m_switch_on_endian.get(); }
    expr_bits_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
