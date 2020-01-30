#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class process_repeat_usertype_t : public kaitai::kstruct {

public:
    class block_t;

    process_repeat_usertype_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, process_repeat_usertype_t* p__root = nullptr);

private:
    void _read();

public:
    ~process_repeat_usertype_t();

    class block_t : public kaitai::kstruct {

    public:

        block_t(kaitai::kstream* p__io, process_repeat_usertype_t* p__parent = nullptr, process_repeat_usertype_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~block_t();

    private:
        int32_t m_a;
        int8_t m_b;
        process_repeat_usertype_t* m__root;
        process_repeat_usertype_t* m__parent;

    public:
        int32_t a() const { return m_a; }
        int8_t b() const { return m_b; }
        process_repeat_usertype_t* _root() const { return m__root; }
        process_repeat_usertype_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<std::vector<std::unique_ptr<block_t>>> m_blocks;
    process_repeat_usertype_t* m__root;
    kaitai::kstruct* m__parent;
    std::unique_ptr<std::vector<std::string>> m__raw_blocks;
    std::unique_ptr<std::vector<kaitai::kstream*>> m__io__raw_blocks;
    std::unique_ptr<std::vector<std::string>> m__raw__raw_blocks;

public:
    std::vector<std::unique_ptr<block_t>>* blocks() const { return m_blocks.get(); }
    process_repeat_usertype_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::vector<std::string>* _raw_blocks() const { return m__raw_blocks.get(); }
    std::vector<kaitai::kstream*>* _io__raw_blocks() const { return m__io__raw_blocks.get(); }
    std::vector<std::string>* _raw__raw_blocks() const { return m__raw__raw_blocks.get(); }
};
