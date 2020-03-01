#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class opaqueExternalType02Child_t : public kaitai::kstruct {

public:
    class opaqueExternalType02ChildChild_t;

    opaqueExternalType02Child_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, opaqueExternalType02Child_t* p__root = nullptr);

private:
    void _read();

public:
    ~opaqueExternalType02Child_t();

    class opaqueExternalType02ChildChild_t : public kaitai::kstruct {

    public:

        opaqueExternalType02ChildChild_t(kaitai::kstream* p__io, opaqueExternalType02Child_t* p__parent = nullptr, opaqueExternalType02Child_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~opaqueExternalType02ChildChild_t();

    private:
        std::string m_s3;
        bool n_s3;

    public:
        bool _is_null_s3() { s3(); return n_s3; };

    private:
        opaqueExternalType02Child_t* m__root;
        opaqueExternalType02Child_t* m__parent;

    public:
        std::string s3() const { return m_s3; }
        opaqueExternalType02Child_t* _root() const { return m__root; }
        opaqueExternalType02Child_t* _parent() const { return m__parent; }
    };

private:
    bool f_some_method;
    bool m_some_method;

public:
    bool some_method();

private:
    std::string m_s1;
    std::string m_s2;
    std::unique_ptr<opaqueExternalType02ChildChild_t> m_s3;
    opaqueExternalType02Child_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string s1() const { return m_s1; }
    std::string s2() const { return m_s2; }
    opaqueExternalType02ChildChild_t* s3() const { return m_s3.get(); }
    opaqueExternalType02Child_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
