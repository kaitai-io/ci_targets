#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class navParentFalse2_t : public kaitai::kstruct {

public:
    class child_t;

    navParentFalse2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, navParentFalse2_t* p__root = nullptr);

private:
    void _read();

public:
    ~navParentFalse2_t();

    class child_t : public kaitai::kstruct {

    public:

        child_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, navParentFalse2_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~child_t();

    private:
        uint8_t m_foo;
        navParentFalse2_t* m__root;
        kaitai::kstruct* m__parent;

    public:
        uint8_t foo() const { return m_foo; }
        navParentFalse2_t* _root() const { return m__root; }
        kaitai::kstruct* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<child_t> m_parentless;
    navParentFalse2_t* m__root;
    kaitai::kstruct* m__parent;

public:
    child_t* parentless() const { return m_parentless.get(); }
    navParentFalse2_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
