#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class nav_parent_switch_t : public kaitai::kstruct {

public:
    class element_1_t;
    class subelement_1_t;

    nav_parent_switch_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, nav_parent_switch_t* p__root = nullptr);

private:
    void _read();

public:
    ~nav_parent_switch_t();
    void _cleanUp();

    class element_1_t : public kaitai::kstruct {

    public:

        element_1_t(kaitai::kstream* p__io, nav_parent_switch_t* p__parent = nullptr, nav_parent_switch_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~element_1_t();
        void _cleanUp();

    private:
        uint8_t m_foo;
        std::unique_ptr<subelement_1_t> m_subelement;
        nav_parent_switch_t* m__root;
        nav_parent_switch_t* m__parent;

    public:
        uint8_t foo() const { return m_foo; }
        subelement_1_t* subelement() const { return m_subelement.get(); }
        nav_parent_switch_t* _root() const { return m__root; }
        nav_parent_switch_t* _parent() const { return m__parent; }
    };

    class subelement_1_t : public kaitai::kstruct {

    public:

        subelement_1_t(kaitai::kstream* p__io, nav_parent_switch_t::element_1_t* p__parent = nullptr, nav_parent_switch_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~subelement_1_t();
        void _cleanUp();

    private:
        uint8_t m_bar;
        bool n_bar;

    public:
        bool _is_null_bar() { bar(); return n_bar; };

    private:
        nav_parent_switch_t* m__root;
        nav_parent_switch_t::element_1_t* m__parent;

    public:
        uint8_t bar() const { return m_bar; }
        nav_parent_switch_t* _root() const { return m__root; }
        nav_parent_switch_t::element_1_t* _parent() const { return m__parent; }
    };

private:
    uint8_t m_category;
    std::unique_ptr<element_1_t> m_content;
    bool n_content;

public:
    bool _is_null_content() { content(); return n_content; };

private:
    nav_parent_switch_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t category() const { return m_category; }
    element_1_t* content() const { return m_content.get(); }
    nav_parent_switch_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
