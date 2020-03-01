#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class nestedSameName2_t : public kaitai::kstruct {

public:
    class main_t;
    class dummyObj_t;

    nestedSameName2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, nestedSameName2_t* p__root = nullptr);

private:
    void _read();

public:
    ~nestedSameName2_t();

    class main_t : public kaitai::kstruct {

    public:
        class fooObj_t;

        main_t(kaitai::kstream* p__io, nestedSameName2_t* p__parent = nullptr, nestedSameName2_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~main_t();

        class fooObj_t : public kaitai::kstruct {

        public:

            fooObj_t(kaitai::kstream* p__io, nestedSameName2_t::main_t* p__parent = nullptr, nestedSameName2_t* p__root = nullptr);

        private:
            void _read();

        public:
            ~fooObj_t();

        private:
            std::string m_data1;
            nestedSameName2_t* m__root;
            nestedSameName2_t::main_t* m__parent;

        public:
            std::string data1() const { return m_data1; }
            nestedSameName2_t* _root() const { return m__root; }
            nestedSameName2_t::main_t* _parent() const { return m__parent; }
        };

    private:
        int32_t m_main_size;
        std::unique_ptr<fooObj_t> m_foo;
        nestedSameName2_t* m__root;
        nestedSameName2_t* m__parent;

    public:
        int32_t main_size() const { return m_main_size; }
        fooObj_t* foo() const { return m_foo.get(); }
        nestedSameName2_t* _root() const { return m__root; }
        nestedSameName2_t* _parent() const { return m__parent; }
    };

    class dummyObj_t : public kaitai::kstruct {

    public:
        class fooObj_t;

        dummyObj_t(kaitai::kstream* p__io, nestedSameName2_t* p__parent = nullptr, nestedSameName2_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~dummyObj_t();

        class fooObj_t : public kaitai::kstruct {

        public:

            fooObj_t(kaitai::kstream* p__io, nestedSameName2_t::dummyObj_t* p__parent = nullptr, nestedSameName2_t* p__root = nullptr);

        private:
            void _read();

        public:
            ~fooObj_t();

        private:
            std::string m_data2;
            nestedSameName2_t* m__root;
            nestedSameName2_t::dummyObj_t* m__parent;

        public:
            std::string data2() const { return m_data2; }
            nestedSameName2_t* _root() const { return m__root; }
            nestedSameName2_t::dummyObj_t* _parent() const { return m__parent; }
        };

    private:
        int32_t m_dummy_size;
        std::unique_ptr<fooObj_t> m_foo;
        nestedSameName2_t* m__root;
        nestedSameName2_t* m__parent;

    public:
        int32_t dummy_size() const { return m_dummy_size; }
        fooObj_t* foo() const { return m_foo.get(); }
        nestedSameName2_t* _root() const { return m__root; }
        nestedSameName2_t* _parent() const { return m__parent; }
    };

private:
    uint32_t m_version;
    std::unique_ptr<main_t> m_main_data;
    std::unique_ptr<dummyObj_t> m_dummy;
    nestedSameName2_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint32_t version() const { return m_version; }
    main_t* main_data() const { return m_main_data.get(); }
    dummyObj_t* dummy() const { return m_dummy.get(); }
    nestedSameName2_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
