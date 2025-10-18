#ifndef NAV_PARENT_OVERRIDE_H_
#define NAV_PARENT_OVERRIDE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class nav_parent_override_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class nav_parent_override_t : public kaitai::kstruct {

public:
    class child_t;
    class mediator_t;

    nav_parent_override_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, nav_parent_override_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~nav_parent_override_t();

    class child_t : public kaitai::kstruct {

    public:

        child_t(kaitai::kstream* p__io, nav_parent_override_t* p__parent = 0, nav_parent_override_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~child_t();
        std::string data() const { return m_data; }
        nav_parent_override_t* _root() const { return m__root; }
        nav_parent_override_t* _parent() const { return m__parent; }

    private:
        std::string m_data;
        nav_parent_override_t* m__root;
        nav_parent_override_t* m__parent;
    };

    class mediator_t : public kaitai::kstruct {

    public:

        mediator_t(kaitai::kstream* p__io, nav_parent_override_t* p__parent = 0, nav_parent_override_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~mediator_t();
        child_t* child_2() const { return m_child_2; }
        nav_parent_override_t* _root() const { return m__root; }
        nav_parent_override_t* _parent() const { return m__parent; }

    private:
        child_t* m_child_2;
        nav_parent_override_t* m__root;
        nav_parent_override_t* m__parent;
    };

public:
    uint8_t child_size() const { return m_child_size; }
    child_t* child_1() const { return m_child_1; }
    mediator_t* mediator_2() const { return m_mediator_2; }
    nav_parent_override_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    uint8_t m_child_size;
    child_t* m_child_1;
    mediator_t* m_mediator_2;
    nav_parent_override_t* m__root;
    kaitai::kstruct* m__parent;
};

#endif  // NAV_PARENT_OVERRIDE_H_
