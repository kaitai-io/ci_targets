#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class nestedSameName_t : public kaitai::kstruct {

public:
    class main_t;
    class dummyObj_t;

    nestedSameName_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, nestedSameName_t* p__root = nullptr);

private:
    void _read();

public:
    ~nestedSameName_t();

    class main_t : public kaitai::kstruct {

    public:
        class fooObj_t;

        main_t(kaitai::kstream* p__io, nestedSameName_t* p__parent = nullptr, nestedSameName_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~main_t();

        class fooObj_t : public kaitai::kstruct {

        public:

            fooObj_t(kaitai::kstream* p__io, nestedSameName_t::main_t* p__parent = nullptr, nestedSameName_t* p__root = nullptr);

        private:
            void _read();

        public:
            ~fooObj_t();

        private:
            std::string m_data;
            nestedSameName_t* m__root;
            nestedSameName_t::main_t* m__parent;

        public:
            std::string data() const { return m_data; }
            nestedSameName_t* _root() const { return m__root; }
            nestedSameName_t::main_t* _parent() const { return m__parent; }
        };

    private:
        int32_t m_main_size;
        std::unique_ptr<fooObj_t> m_foo;
        nestedSameName_t* m__root;
        nestedSameName_t* m__parent;

    public:
        int32_t main_size() const { return m_main_size; }
        fooObj_t* foo() const { return m_foo.get(); }
        nestedSameName_t* _root() const { return m__root; }
        nestedSameName_t* _parent() const { return m__parent; }
    };

    class dummyObj_t : public kaitai::kstruct {

    public:
        class foo_t;

        dummyObj_t(kaitai::kstream* p__io, nestedSameName_t* p__parent = nullptr, nestedSameName_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~dummyObj_t();

        class foo_t : public kaitai::kstruct {

        public:

            foo_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, nestedSameName_t* p__root = nullptr);

        private:
            void _read();

        public:
            ~foo_t();

        private:
            nestedSameName_t* m__root;
            kaitai::kstruct* m__parent;

        public:
            nestedSameName_t* _root() const { return m__root; }
            kaitai::kstruct* _parent() const { return m__parent; }
        };

    private:
        nestedSameName_t* m__root;
        nestedSameName_t* m__parent;

    public:
        nestedSameName_t* _root() const { return m__root; }
        nestedSameName_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<main_t> m_main_data;
    std::unique_ptr<dummyObj_t> m_dummy;
    nestedSameName_t* m__root;
    kaitai::kstruct* m__parent;

public:
    main_t* main_data() const { return m_main_data.get(); }
    dummyObj_t* dummy() const { return m_dummy.get(); }
    nestedSameName_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
