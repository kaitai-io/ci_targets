#ifndef PARAMS_PASS_USERTYPE_H_
#define PARAMS_PASS_USERTYPE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class params_pass_usertype_t : public kaitai::kstruct {

public:
    class block_t;
    class param_type_t;

    params_pass_usertype_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, params_pass_usertype_t* p__root = 0);

private:
    void _read();

public:
    ~params_pass_usertype_t();
    void _clean_up();

    class block_t : public kaitai::kstruct {

    public:

        block_t(kaitai::kstream* p__io, params_pass_usertype_t* p__parent = 0, params_pass_usertype_t* p__root = 0);

    private:
        void _read();

    public:
        ~block_t();
        void _clean_up();

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

        param_type_t(block_t* p_foo, kaitai::kstream* p__io, params_pass_usertype_t* p__parent = 0, params_pass_usertype_t* p__root = 0);

    private:
        void _read();

    public:
        ~param_type_t();
        void _clean_up();

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
    block_t* m_first;
    param_type_t* m_one;
    params_pass_usertype_t* m__root;
    kaitai::kstruct* m__parent;

public:
    block_t* first() const { return m_first; }
    param_type_t* one() const { return m_one; }
    params_pass_usertype_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // PARAMS_PASS_USERTYPE_H_
