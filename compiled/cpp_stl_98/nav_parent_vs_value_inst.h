#ifndef NAV_PARENT_VS_VALUE_INST_H_
#define NAV_PARENT_VS_VALUE_INST_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class nav_parent_vs_value_inst_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class nav_parent_vs_value_inst_t : public kaitai::kstruct {

public:
    class child_obj_t;

    nav_parent_vs_value_inst_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, nav_parent_vs_value_inst_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~nav_parent_vs_value_inst_t();

    class child_obj_t : public kaitai::kstruct {

    public:

        child_obj_t(kaitai::kstream* p__io, nav_parent_vs_value_inst_t* p__parent = 0, nav_parent_vs_value_inst_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~child_obj_t();

    private:
        bool f_do_something;
        bool m_do_something;

    public:
        bool do_something();

    private:
        nav_parent_vs_value_inst_t* m__root;
        nav_parent_vs_value_inst_t* m__parent;

    public:
        nav_parent_vs_value_inst_t* _root() const { return m__root; }
        nav_parent_vs_value_inst_t* _parent() const { return m__parent; }
    };

private:
    std::string m_s1;
    child_obj_t* m_child;
    nav_parent_vs_value_inst_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string s1() const { return m_s1; }
    child_obj_t* child() const { return m_child; }
    nav_parent_vs_value_inst_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // NAV_PARENT_VS_VALUE_INST_H_
