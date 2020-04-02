#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class test_t : public kaitai::kstruct {

public:
    class my_type_t;

    test_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, test_t* p__root = nullptr);

private:
    void _read();

public:
    ~test_t();

    class my_type_t : public kaitai::kstruct {

    public:

        my_type_t(int32_t p_repeat_count, kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, test_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~my_type_t();

    private:
        int32_t m_world;
        std::unique_ptr<std::vector<int32_t>> m_repeated_thing;
        int32_t m_repeat_count;
        test_t* m__root;
        kaitai::kstruct* m__parent;

    public:
        int32_t world() const { return m_world; }
        std::vector<int32_t>* repeated_thing() const { return m_repeated_thing.get(); }
        int32_t repeat_count() const { return m_repeat_count; }
        test_t* _root() const { return m__root; }
        kaitai::kstruct* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<test_t::my_type(2)_t> m_seq_block;
    test_t* m__root;
    kaitai::kstruct* m__parent;

public:
    test_t::my_type(2)_t* seq_block() const { return m_seq_block.get(); }
    test_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
