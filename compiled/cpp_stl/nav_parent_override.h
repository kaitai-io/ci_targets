#ifndef NAV_PARENT_OVERRIDE_H_
#define NAV_PARENT_OVERRIDE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <kaitai/kaitaistream.h>

#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class nav_parent_override_t : public kaitai::kstruct {

public:
    class mediator_t;
    class child_t;

    nav_parent_override_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, nav_parent_override_t* p__root = 0);
    void _read();
    ~nav_parent_override_t();

    class mediator_t : public kaitai::kstruct {

    public:

        mediator_t(kaitai::kstream* p__io, nav_parent_override_t* p__parent = 0, nav_parent_override_t* p__root = 0);
        void _read();
        ~mediator_t();

    private:
        child_t* m_child_2;
        nav_parent_override_t* m__root;
        nav_parent_override_t* m__parent;

    public:
        child_t* child_2() const { return m_child_2; }
        nav_parent_override_t* _root() const { return m__root; }
        nav_parent_override_t* _parent() const { return m__parent; }
    };

    class child_t : public kaitai::kstruct {

    public:

        child_t(kaitai::kstream* p__io, nav_parent_override_t* p__parent = 0, nav_parent_override_t* p__root = 0);
        void _read();
        ~child_t();

    private:
        std::string m_data;
        nav_parent_override_t* m__root;
        nav_parent_override_t* m__parent;

    public:
        std::string data() const { return m_data; }
        nav_parent_override_t* _root() const { return m__root; }
        nav_parent_override_t* _parent() const { return m__parent; }
    };

private:
    uint8_t m_child_size;
    child_t* m_child_1;
    mediator_t* m_mediator_2;
    nav_parent_override_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t child_size() const { return m_child_size; }
    child_t* child_1() const { return m_child_1; }
    mediator_t* mediator_2() const { return m_mediator_2; }
    nav_parent_override_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // NAV_PARENT_OVERRIDE_H_
