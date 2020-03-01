#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class positionToEnd_t : public kaitai::kstruct {

public:
    class indexObj_t;

    positionToEnd_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, positionToEnd_t* p__root = nullptr);

private:
    void _read();

public:
    ~positionToEnd_t();

    class indexObj_t : public kaitai::kstruct {

    public:

        indexObj_t(kaitai::kstream* p__io, positionToEnd_t* p__parent = nullptr, positionToEnd_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~indexObj_t();

    private:
        uint32_t m_foo;
        uint32_t m_bar;
        positionToEnd_t* m__root;
        positionToEnd_t* m__parent;

    public:
        uint32_t foo() const { return m_foo; }
        uint32_t bar() const { return m_bar; }
        positionToEnd_t* _root() const { return m__root; }
        positionToEnd_t* _parent() const { return m__parent; }
    };

private:
    bool f_index;
    std::unique_ptr<indexObj_t> m_index;

public:
    indexObj_t* index();

private:
    positionToEnd_t* m__root;
    kaitai::kstruct* m__parent;

public:
    positionToEnd_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
