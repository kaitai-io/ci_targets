#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class paramsPassUsertype_t : public kaitai::kstruct {

public:
    class block_t;
    class paramType_t;

    paramsPassUsertype_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, paramsPassUsertype_t* p__root = nullptr);

private:
    void _read();

public:
    ~paramsPassUsertype_t();

    class block_t : public kaitai::kstruct {

    public:

        block_t(kaitai::kstream* p__io, paramsPassUsertype_t* p__parent = nullptr, paramsPassUsertype_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~block_t();

    private:
        uint8_t m_foo;
        paramsPassUsertype_t* m__root;
        paramsPassUsertype_t* m__parent;

    public:
        uint8_t foo() const { return m_foo; }
        paramsPassUsertype_t* _root() const { return m__root; }
        paramsPassUsertype_t* _parent() const { return m__parent; }
    };

    class paramType_t : public kaitai::kstruct {

    public:

        paramType_t(block_t* p_foo, kaitai::kstream* p__io, paramsPassUsertype_t* p__parent = nullptr, paramsPassUsertype_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~paramType_t();

    private:
        std::string m_buf;
        block_t* m_foo;
        paramsPassUsertype_t* m__root;
        paramsPassUsertype_t* m__parent;

    public:
        std::string buf() const { return m_buf; }
        block_t* foo() const { return m_foo; }
        paramsPassUsertype_t* _root() const { return m__root; }
        paramsPassUsertype_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<block_t> m_first;
    std::unique_ptr<paramType_t> m_one;
    paramsPassUsertype_t* m__root;
    kaitai::kstruct* m__parent;

public:
    block_t* first() const { return m_first.get(); }
    paramType_t* one() const { return m_one.get(); }
    paramsPassUsertype_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
