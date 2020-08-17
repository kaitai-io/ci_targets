#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class nested_same_name2_t : public kaitai::kstruct {

public:
    class main_t;
    class dummy_obj_t;

    nested_same_name2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, nested_same_name2_t* p__root = nullptr);

private:
    void _read();

public:

private:
    void _clean_up();

public:
    ~nested_same_name2_t();

    class main_t : public kaitai::kstruct {

    public:
        class foo_obj_t;

        main_t(kaitai::kstream* p__io, nested_same_name2_t* p__parent = nullptr, nested_same_name2_t* p__root = nullptr);

    private:
        void _read();

    public:

    private:
        void _clean_up();

    public:
        ~main_t();

        class foo_obj_t : public kaitai::kstruct {

        public:

            foo_obj_t(kaitai::kstream* p__io, nested_same_name2_t::main_t* p__parent = nullptr, nested_same_name2_t* p__root = nullptr);

        private:
            void _read();

        public:

        private:
            void _clean_up();

        public:
            ~foo_obj_t();

        private:
            std::string m_data1;
            nested_same_name2_t* m__root;
            nested_same_name2_t::main_t* m__parent;

        public:
            std::string data1() const { return m_data1; }
            nested_same_name2_t* _root() const { return m__root; }
            nested_same_name2_t::main_t* _parent() const { return m__parent; }
        };

    private:
        int32_t m_main_size;
        std::unique_ptr<foo_obj_t> m_foo;
        nested_same_name2_t* m__root;
        nested_same_name2_t* m__parent;

    public:
        int32_t main_size() const { return m_main_size; }
        foo_obj_t* foo() const { return m_foo.get(); }
        nested_same_name2_t* _root() const { return m__root; }
        nested_same_name2_t* _parent() const { return m__parent; }
    };

    class dummy_obj_t : public kaitai::kstruct {

    public:
        class foo_obj_t;

        dummy_obj_t(kaitai::kstream* p__io, nested_same_name2_t* p__parent = nullptr, nested_same_name2_t* p__root = nullptr);

    private:
        void _read();

    public:

    private:
        void _clean_up();

    public:
        ~dummy_obj_t();

        class foo_obj_t : public kaitai::kstruct {

        public:

            foo_obj_t(kaitai::kstream* p__io, nested_same_name2_t::dummy_obj_t* p__parent = nullptr, nested_same_name2_t* p__root = nullptr);

        private:
            void _read();

        public:

        private:
            void _clean_up();

        public:
            ~foo_obj_t();

        private:
            std::string m_data2;
            nested_same_name2_t* m__root;
            nested_same_name2_t::dummy_obj_t* m__parent;

        public:
            std::string data2() const { return m_data2; }
            nested_same_name2_t* _root() const { return m__root; }
            nested_same_name2_t::dummy_obj_t* _parent() const { return m__parent; }
        };

    private:
        int32_t m_dummy_size;
        std::unique_ptr<foo_obj_t> m_foo;
        nested_same_name2_t* m__root;
        nested_same_name2_t* m__parent;

    public:
        int32_t dummy_size() const { return m_dummy_size; }
        foo_obj_t* foo() const { return m_foo.get(); }
        nested_same_name2_t* _root() const { return m__root; }
        nested_same_name2_t* _parent() const { return m__parent; }
    };

private:
    uint32_t m_version;
    std::unique_ptr<main_t> m_main_data;
    std::unique_ptr<dummy_obj_t> m_dummy;
    nested_same_name2_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint32_t version() const { return m_version; }
    main_t* main_data() const { return m_main_data.get(); }
    dummy_obj_t* dummy() const { return m_dummy.get(); }
    nested_same_name2_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
