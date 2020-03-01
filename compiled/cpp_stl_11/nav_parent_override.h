#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class navParentOverride_t : public kaitai::kstruct {

public:
    class mediator_t;
    class child_t;

    navParentOverride_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, navParentOverride_t* p__root = nullptr);

private:
    void _read();

public:
    ~navParentOverride_t();

    class mediator_t : public kaitai::kstruct {

    public:

        mediator_t(kaitai::kstream* p__io, navParentOverride_t* p__parent = nullptr, navParentOverride_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~mediator_t();

    private:
        std::unique_ptr<child_t> m_child_2;
        navParentOverride_t* m__root;
        navParentOverride_t* m__parent;

    public:
        child_t* child_2() const { return m_child_2.get(); }
        navParentOverride_t* _root() const { return m__root; }
        navParentOverride_t* _parent() const { return m__parent; }
    };

    class child_t : public kaitai::kstruct {

    public:

        child_t(kaitai::kstream* p__io, navParentOverride_t* p__parent = nullptr, navParentOverride_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~child_t();

    private:
        std::string m_data;
        navParentOverride_t* m__root;
        navParentOverride_t* m__parent;

    public:
        std::string data() const { return m_data; }
        navParentOverride_t* _root() const { return m__root; }
        navParentOverride_t* _parent() const { return m__parent; }
    };

private:
    uint8_t m_child_size;
    std::unique_ptr<child_t> m_child_1;
    std::unique_ptr<mediator_t> m_mediator_2;
    navParentOverride_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t child_size() const { return m_child_size; }
    child_t* child_1() const { return m_child_1.get(); }
    mediator_t* mediator_2() const { return m_mediator_2.get(); }
    navParentOverride_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
