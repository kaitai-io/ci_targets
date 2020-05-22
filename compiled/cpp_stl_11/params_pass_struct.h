#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class params_pass_struct_t : public kaitai::kstruct {

public:
    class block_t;
    class struct_type_t;

    params_pass_struct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, params_pass_struct_t* p__root = nullptr);

private:
    void _read();

public:
    ~params_pass_struct_t();

    class block_t : public kaitai::kstruct {

    public:

        block_t(kaitai::kstream* p__io, params_pass_struct_t* p__parent = nullptr, params_pass_struct_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~block_t();

    private:
        uint8_t m_foo;
        params_pass_struct_t* m__root;
        params_pass_struct_t* m__parent;

    public:
        uint8_t foo() const { return m_foo; }
        params_pass_struct_t* _root() const { return m__root; }
        virtual params_pass_struct_t* _parent() const { return m__parent; }
    };

    class struct_type_t : public kaitai::kstruct {

    public:
        class baz_t;

        struct_type_t(kaitai::kstruct* p_foo, kaitai::kstream* p__io, params_pass_struct_t* p__parent = nullptr, params_pass_struct_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~struct_type_t();

        class baz_t : public kaitai::kstruct {

        public:

            baz_t(kaitai::kstruct* p_foo, kaitai::kstream* p__io, params_pass_struct_t::struct_type_t* p__parent = nullptr, params_pass_struct_t* p__root = nullptr);

        private:
            void _read();

        public:
            ~baz_t();

        private:
            uint8_t m_qux;
            kaitai::kstruct* m_foo;
            params_pass_struct_t* m__root;
            params_pass_struct_t::struct_type_t* m__parent;

        public:
            uint8_t qux() const { return m_qux; }
            kaitai::kstruct* foo() const { return m_foo; }
            params_pass_struct_t* _root() const { return m__root; }
            virtual params_pass_struct_t::struct_type_t* _parent() const { return m__parent; }
        };

    private:
        std::unique_ptr<baz_t> m_bar;
        kaitai::kstruct* m_foo;
        params_pass_struct_t* m__root;
        params_pass_struct_t* m__parent;

    public:
        baz_t* bar() const { return m_bar.get(); }
        kaitai::kstruct* foo() const { return m_foo; }
        params_pass_struct_t* _root() const { return m__root; }
        virtual params_pass_struct_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<block_t> m_first;
    std::unique_ptr<struct_type_t> m_one;
    params_pass_struct_t* m__root;
    kaitai::kstruct* m__parent;

public:
    block_t* first() const { return m_first.get(); }
    struct_type_t* one() const { return m_one.get(); }
    params_pass_struct_t* _root() const { return m__root; }
    virtual kaitai::kstruct* _parent() const { return m__parent; }
};
