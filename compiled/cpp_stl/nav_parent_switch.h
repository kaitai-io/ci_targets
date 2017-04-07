#ifndef NAV_PARENT_SWITCH_H_
#define NAV_PARENT_SWITCH_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <kaitai/kaitaistream.h>

#include <stdint.h>
#include <vector>
#include <sstream>
#include <algorithm>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class nav_parent_switch_t : public kaitai::kstruct {

public:
    class element_1_t;
    class subelement_1_t;

    nav_parent_switch_t(kaitai::kstream* p_io, kaitai::kstruct* p_parent = 0, nav_parent_switch_t* p_root = 0);
    ~nav_parent_switch_t();

    class element_1_t : public kaitai::kstruct {

    public:

        element_1_t(kaitai::kstream* p_io, nav_parent_switch_t* p_parent = 0, nav_parent_switch_t* p_root = 0);
        ~element_1_t();

    private:
        uint8_t m_foo;
        subelement_1_t* m_subelement;
        nav_parent_switch_t* m__root;
        nav_parent_switch_t* m__parent;

    public:
        uint8_t foo() const { return m_foo; }
        subelement_1_t* subelement() const { return m_subelement; }
        nav_parent_switch_t* _root() const { return m__root; }
        nav_parent_switch_t* _parent() const { return m__parent; }
    };

    class subelement_1_t : public kaitai::kstruct {

    public:

        subelement_1_t(kaitai::kstream* p_io, nav_parent_switch_t::element_1_t* p_parent = 0, nav_parent_switch_t* p_root = 0);
        ~subelement_1_t();

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
    element_1_t* m_content;
    nav_parent_switch_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t category() const { return m_category; }
    element_1_t* content() const { return m_content; }
    nav_parent_switch_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // NAV_PARENT_SWITCH_H_
