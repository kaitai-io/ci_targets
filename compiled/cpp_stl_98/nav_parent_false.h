#ifndef NAV_PARENT_FALSE_H_
#define NAV_PARENT_FALSE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class nav_parent_false_t : public kaitai::kstruct {

public:
    class parent_a_t;
    class parent_b_t;
    class child_t;

    nav_parent_false_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, nav_parent_false_t* p__root = 0);

private:
    void _read();

public:

private:
    void _clean_up();

public:
    ~nav_parent_false_t();

    class parent_a_t : public kaitai::kstruct {

    public:

        parent_a_t(kaitai::kstream* p__io, nav_parent_false_t* p__parent = 0, nav_parent_false_t* p__root = 0);

    private:
        void _read();

    public:

    private:
        void _clean_up();

    public:
        ~parent_a_t();

    private:
        child_t* m_foo;
        parent_b_t* m_bar;
        nav_parent_false_t* m__root;
        nav_parent_false_t* m__parent;

    public:
        child_t* foo() const { return m_foo; }
        parent_b_t* bar() const { return m_bar; }
        nav_parent_false_t* _root() const { return m__root; }
        nav_parent_false_t* _parent() const { return m__parent; }
    };

    class parent_b_t : public kaitai::kstruct {

    public:

        parent_b_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, nav_parent_false_t* p__root = 0);

    private:
        void _read();

    public:

    private:
        void _clean_up();

    public:
        ~parent_b_t();

    private:
        child_t* m_foo;
        nav_parent_false_t* m__root;
        kaitai::kstruct* m__parent;

    public:
        child_t* foo() const { return m_foo; }
        nav_parent_false_t* _root() const { return m__root; }
        kaitai::kstruct* _parent() const { return m__parent; }
    };

    class child_t : public kaitai::kstruct {

    public:

        child_t(kaitai::kstream* p__io, nav_parent_false_t::parent_a_t* p__parent = 0, nav_parent_false_t* p__root = 0);

    private:
        void _read();

    public:

    private:
        void _clean_up();

    public:
        ~child_t();

    private:
        uint8_t m_code;
        std::string m_more;
        bool n_more;

    public:
        bool _is_null_more() { more(); return n_more; };

    private:
        nav_parent_false_t* m__root;
        nav_parent_false_t::parent_a_t* m__parent;

    public:
        uint8_t code() const { return m_code; }
        std::string more() const { return m_more; }
        nav_parent_false_t* _root() const { return m__root; }
        nav_parent_false_t::parent_a_t* _parent() const { return m__parent; }
    };

private:
    uint8_t m_child_size;
    parent_a_t* m_element_a;
    parent_b_t* m_element_b;
    nav_parent_false_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t child_size() const { return m_child_size; }
    parent_a_t* element_a() const { return m_element_a; }
    parent_b_t* element_b() const { return m_element_b; }
    nav_parent_false_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // NAV_PARENT_FALSE_H_
