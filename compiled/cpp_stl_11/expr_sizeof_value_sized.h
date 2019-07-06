#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"

#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class expr_sizeof_value_sized_t : public kaitai::kstruct {

public:
    class block_t;

    expr_sizeof_value_sized_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, expr_sizeof_value_sized_t* p__root = nullptr);

private:
    void _read();

public:
    ~expr_sizeof_value_sized_t();

    class block_t : public kaitai::kstruct {

    public:

        block_t(kaitai::kstream* p__io, expr_sizeof_value_sized_t* p__parent = nullptr, expr_sizeof_value_sized_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~block_t();

    private:
        uint8_t m_a;
        uint32_t m_b;
        std::string m_c;
        expr_sizeof_value_sized_t* m__root;
        expr_sizeof_value_sized_t* m__parent;

    public:
        uint8_t a() const { return m_a; }
        uint32_t b() const { return m_b; }
        std::string c() const { return m_c; }
        expr_sizeof_value_sized_t* _root() const { return m__root; }
        expr_sizeof_value_sized_t* _parent() const { return m__parent; }
    };

private:
    bool f_self_sizeof;
    int32_t m_self_sizeof;

public:
    int32_t self_sizeof();

private:
    bool f_sizeof_block;
    int32_t m_sizeof_block;

public:
    int32_t sizeof_block();

private:
    bool f_sizeof_block_b;
    int32_t m_sizeof_block_b;

public:
    int32_t sizeof_block_b();

private:
    bool f_sizeof_block_a;
    int32_t m_sizeof_block_a;

public:
    int32_t sizeof_block_a();

private:
    bool f_sizeof_block_c;
    int32_t m_sizeof_block_c;

public:
    int32_t sizeof_block_c();

private:
    std::unique_ptr<block_t> m_block1;
    uint16_t m_more;
    expr_sizeof_value_sized_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_block1;
    kaitai::kstream* m__io__raw_block1;

public:
    block_t* block1() const { return m_block1.get(); }
    uint16_t more() const { return m_more; }
    expr_sizeof_value_sized_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_block1() const { return m__raw_block1; }
    kaitai::kstream* _io__raw_block1() const { return m__io__raw_block1; }
};
