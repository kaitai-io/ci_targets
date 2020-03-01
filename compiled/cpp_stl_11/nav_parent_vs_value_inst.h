#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class navParentVsValueInst_t : public kaitai::kstruct {

public:
    class childObj_t;

    navParentVsValueInst_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, navParentVsValueInst_t* p__root = nullptr);

private:
    void _read();

public:
    ~navParentVsValueInst_t();

    class childObj_t : public kaitai::kstruct {

    public:

        childObj_t(kaitai::kstream* p__io, navParentVsValueInst_t* p__parent = nullptr, navParentVsValueInst_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~childObj_t();

    private:
        bool f_do_something;
        bool m_do_something;

    public:
        bool do_something();

    private:
        navParentVsValueInst_t* m__root;
        navParentVsValueInst_t* m__parent;

    public:
        navParentVsValueInst_t* _root() const { return m__root; }
        navParentVsValueInst_t* _parent() const { return m__parent; }
    };

private:
    std::string m_s1;
    std::unique_ptr<childObj_t> m_child;
    navParentVsValueInst_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string s1() const { return m_s1; }
    childObj_t* child() const { return m_child.get(); }
    navParentVsValueInst_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
