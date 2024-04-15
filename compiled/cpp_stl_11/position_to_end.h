#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class position_to_end_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class position_to_end_t : public kaitai::kstruct {

public:
    class index_obj_t;

    position_to_end_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, position_to_end_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~position_to_end_t();

    class index_obj_t : public kaitai::kstruct {

    public:

        index_obj_t(kaitai::kstream* p__io, position_to_end_t* p__parent = nullptr, position_to_end_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~index_obj_t();

    private:
        uint32_t m_foo;
        uint32_t m_bar;
        position_to_end_t* m__root;
        position_to_end_t* m__parent;

    public:
        uint32_t foo() const { return m_foo; }
        uint32_t bar() const { return m_bar; }
        position_to_end_t* _root() const { return m__root; }
        position_to_end_t* _parent() const { return m__parent; }
    };

private:
    bool f_index;
    std::unique_ptr<index_obj_t> m_index;

public:
    index_obj_t* index();

private:
    position_to_end_t* m__root;
    kaitai::kstruct* m__parent;

public:
    position_to_end_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
