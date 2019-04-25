#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"

#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class nested_types2_t : public kaitai::kstruct {

public:
    class subtype_a_t;
    class subtype_b_t;

    nested_types2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, nested_types2_t* p__root = nullptr);

private:
    void _read();

public:
    ~nested_types2_t();

    class subtype_a_t : public kaitai::kstruct {

    public:
        class subtype_c_t;
        class subtype_cc_t;

        subtype_a_t(kaitai::kstream* p__io, nested_types2_t* p__parent = nullptr, nested_types2_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~subtype_a_t();

        class subtype_c_t : public kaitai::kstruct {

        public:
            class subtype_d_t;

            subtype_c_t(kaitai::kstream* p__io, nested_types2_t::subtype_a_t* p__parent = nullptr, nested_types2_t* p__root = nullptr);

        private:
            void _read();

        public:
            ~subtype_c_t();

            class subtype_d_t : public kaitai::kstruct {

            public:

                subtype_d_t(kaitai::kstream* p__io, nested_types2_t::subtype_a_t::subtype_c_t* p__parent = nullptr, nested_types2_t* p__root = nullptr);

            private:
                void _read();

            public:
                ~subtype_d_t();

            private:
                int8_t m_value_d;
                nested_types2_t* m__root;
                nested_types2_t::subtype_a_t::subtype_c_t* m__parent;

            public:
                int8_t value_d() const { return m_value_d; }
                nested_types2_t* _root() const { return m__root; }
                nested_types2_t::subtype_a_t::subtype_c_t* _parent() const { return m__parent; }
            };

        private:
            int8_t m_value_c;
            std::unique_ptr<subtype_d_t> m_typed_here;
            std::unique_ptr<subtype_cc_t> m_typed_parent;
            std::unique_ptr<subtype_b_t> m_typed_root;
            nested_types2_t* m__root;
            nested_types2_t::subtype_a_t* m__parent;

        public:
            int8_t value_c() const { return m_value_c; }
            subtype_d_t* typed_here() const { return m_typed_here.get(); }
            subtype_cc_t* typed_parent() const { return m_typed_parent.get(); }
            subtype_b_t* typed_root() const { return m_typed_root.get(); }
            nested_types2_t* _root() const { return m__root; }
            nested_types2_t::subtype_a_t* _parent() const { return m__parent; }
        };

        class subtype_cc_t : public kaitai::kstruct {

        public:

            subtype_cc_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, nested_types2_t* p__root = nullptr);

        private:
            void _read();

        public:
            ~subtype_cc_t();

        private:
            int8_t m_value_cc;
            nested_types2_t* m__root;
            kaitai::kstruct* m__parent;

        public:
            int8_t value_cc() const { return m_value_cc; }
            nested_types2_t* _root() const { return m__root; }
            kaitai::kstruct* _parent() const { return m__parent; }
        };

    private:
        std::unique_ptr<subtype_b_t> m_typed_at_root;
        std::unique_ptr<subtype_c_t> m_typed_here1;
        std::unique_ptr<subtype_cc_t> m_typed_here2;
        nested_types2_t* m__root;
        nested_types2_t* m__parent;

    public:
        subtype_b_t* typed_at_root() const { return m_typed_at_root.get(); }
        subtype_c_t* typed_here1() const { return m_typed_here1.get(); }
        subtype_cc_t* typed_here2() const { return m_typed_here2.get(); }
        nested_types2_t* _root() const { return m__root; }
        nested_types2_t* _parent() const { return m__parent; }
    };

    class subtype_b_t : public kaitai::kstruct {

    public:

        subtype_b_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, nested_types2_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~subtype_b_t();

    private:
        int8_t m_value_b;
        nested_types2_t* m__root;
        kaitai::kstruct* m__parent;

    public:
        int8_t value_b() const { return m_value_b; }
        nested_types2_t* _root() const { return m__root; }
        kaitai::kstruct* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<subtype_a_t> m_one;
    std::unique_ptr<subtype_b_t> m_two;
    nested_types2_t* m__root;
    kaitai::kstruct* m__parent;

public:
    subtype_a_t* one() const { return m_one.get(); }
    subtype_b_t* two() const { return m_two.get(); }
    nested_types2_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
