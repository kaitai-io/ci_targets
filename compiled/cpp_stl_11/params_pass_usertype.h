#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class params_pass_usertype_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class params_pass_usertype_t : public kaitai::kstruct {

public:
    class block_t;
    class param_type_t;

    params_pass_usertype_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, params_pass_usertype_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~params_pass_usertype_t();

    class block_t : public kaitai::kstruct {

    public:

        block_t(kaitai::kstream* p__io, params_pass_usertype_t* p__parent = nullptr, params_pass_usertype_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~block_t();

    private:
        uint8_t m_foo;
        params_pass_usertype_t* m__root;
        params_pass_usertype_t* m__parent;

    public:
        uint8_t foo() const { return m_foo; }
        params_pass_usertype_t* _root() const { return m__root; }
        params_pass_usertype_t* _parent() const { return m__parent; }
    };

    class param_type_t : public kaitai::kstruct {

    public:

        param_type_t(block_t* p_foo, kaitai::kstream* p__io, params_pass_usertype_t* p__parent = nullptr, params_pass_usertype_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~param_type_t();

    private:
        std::string m_buf;
        block_t* m_foo;
        params_pass_usertype_t* m__root;
        params_pass_usertype_t* m__parent;

    public:
        std::string buf() const { return m_buf; }
        block_t* foo() const { return m_foo; }
        params_pass_usertype_t* _root() const { return m__root; }
        params_pass_usertype_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<block_t> m_first;
    std::unique_ptr<param_type_t> m_one;
    params_pass_usertype_t* m__root;
    kaitai::kstruct* m__parent;

public:
    block_t* first() const { return m_first.get(); }
    param_type_t* one() const { return m_one.get(); }
    params_pass_usertype_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
