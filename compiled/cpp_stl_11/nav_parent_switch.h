#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class navParentSwitch_t : public kaitai::kstruct {

public:
    class element1_t;
    class subelement1_t;

    navParentSwitch_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, navParentSwitch_t* p__root = nullptr);

private:
    void _read();

public:
    ~navParentSwitch_t();

    class element1_t : public kaitai::kstruct {

    public:

        element1_t(kaitai::kstream* p__io, navParentSwitch_t* p__parent = nullptr, navParentSwitch_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~element1_t();

    private:
        uint8_t m_foo;
        std::unique_ptr<subelement1_t> m_subelement;
        navParentSwitch_t* m__root;
        navParentSwitch_t* m__parent;

    public:
        uint8_t foo() const { return m_foo; }
        subelement1_t* subelement() const { return m_subelement.get(); }
        navParentSwitch_t* _root() const { return m__root; }
        navParentSwitch_t* _parent() const { return m__parent; }
    };

    class subelement1_t : public kaitai::kstruct {

    public:

        subelement1_t(kaitai::kstream* p__io, navParentSwitch_t::element1_t* p__parent = nullptr, navParentSwitch_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~subelement1_t();

    private:
        uint8_t m_bar;
        bool n_bar;

    public:
        bool _is_null_bar() { bar(); return n_bar; };

    private:
        navParentSwitch_t* m__root;
        navParentSwitch_t::element1_t* m__parent;

    public:
        uint8_t bar() const { return m_bar; }
        navParentSwitch_t* _root() const { return m__root; }
        navParentSwitch_t::element1_t* _parent() const { return m__parent; }
    };

private:
    uint8_t m_category;
    std::unique_ptr<element1_t> m_content;
    bool n_content;

public:
    bool _is_null_content() { content(); return n_content; };

private:
    navParentSwitch_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t category() const { return m_category; }
    element1_t* content() const { return m_content.get(); }
    navParentSwitch_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
