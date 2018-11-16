#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"

#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class buffered_struct_t : public kaitai::kstruct {

public:
    class block_t;

    buffered_struct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, buffered_struct_t* p__root = 0);

private:
    void _read();

public:
    ~buffered_struct_t();

    class block_t : public kaitai::kstruct {

    public:

        block_t(kaitai::kstream* p__io, buffered_struct_t* p__parent = 0, buffered_struct_t* p__root = 0);

    private:
        void _read();

    public:
        ~block_t();

    private:
        uint32_t m_number1;
        uint32_t m_number2;
        buffered_struct_t* m__root;
        buffered_struct_t* m__parent;

    public:
        uint32_t number1() const { return m_number1; }
        uint32_t number2() const { return m_number2; }
        buffered_struct_t* _root() const { return m__root; }
        buffered_struct_t* _parent() const { return m__parent; }
    };

private:
    uint32_t m_len1;
    block_t* m_block1;
    uint32_t m_len2;
    block_t* m_block2;
    uint32_t m_finisher;
    buffered_struct_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_block1;
    kaitai::kstream* m__io__raw_block1;
    std::string m__raw_block2;
    kaitai::kstream* m__io__raw_block2;

public:
    uint32_t len1() const { return m_len1; }
    block_t* block1() const { return m_block1; }
    uint32_t len2() const { return m_len2; }
    block_t* block2() const { return m_block2; }
    uint32_t finisher() const { return m_finisher; }
    buffered_struct_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_block1() const { return m__raw_block1; }
    kaitai::kstream* _io__raw_block1() const { return m__io__raw_block1; }
    std::string _raw_block2() const { return m__raw_block2; }
    kaitai::kstream* _io__raw_block2() const { return m__io__raw_block2; }
};
