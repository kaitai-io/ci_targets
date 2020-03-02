#ifndef NESTED_TYPES2_H_
#define NESTED_TYPES2_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class nested_types2_t : public kaitai::kstruct {

public:
    class subtype_a_t;
    class subtype_b_t;

    nested_types2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, nested_types2_t* p__root = 0);

private:
    void _read();

public:
    ~nested_types2_t();

    class subtype_a_t : public kaitai::kstruct {

    public:
        class subtype_c_t;
        class subtype_cc_t;

        subtype_a_t(kaitai::kstream* p__io, nested_types2_t* p__parent = 0, nested_types2_t* p__root = 0);

    private:
        void _read();

    public:
        ~subtype_a_t();

        class subtype_c_t : public kaitai::kstruct {

        public:
            class subtype_d_t;

            subtype_c_t(kaitai::kstream* p__io, nested_types2_t::subtype_a_t* p__parent = 0, nested_types2_t* p__root = 0);

        private:
            void _read();

        public:
            ~subtype_c_t();

            class subtype_d_t : public kaitai::kstruct {

            public:

                subtype_d_t(kaitai::kstream* p__io, nested_types2_t::subtype_a_t::subtype_c_t* p__parent = 0, nested_types2_t* p__root = 0);

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
            subtype_d_t* m_typed_here;
            subtype_cc_t* m_typed_parent;
            subtype_b_t* m_typed_root;
            nested_types2_t* m__root;
            nested_types2_t::subtype_a_t* m__parent;

        public:
            int8_t value_c() const { return m_value_c; }
            subtype_d_t* typed_here() const { return m_typed_here; }
            subtype_cc_t* typed_parent() const { return m_typed_parent; }
            subtype_b_t* typed_root() const { return m_typed_root; }
            nested_types2_t* _root() const { return m__root; }
            nested_types2_t::subtype_a_t* _parent() const { return m__parent; }
        };

        class subtype_cc_t : public kaitai::kstruct {

        public:

            subtype_cc_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, nested_types2_t* p__root = 0);

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
        subtype_b_t* m_typed_at_root;
        subtype_c_t* m_typed_here1;
        subtype_cc_t* m_typed_here2;
        nested_types2_t* m__root;
        nested_types2_t* m__parent;

    public:
        subtype_b_t* typed_at_root() const { return m_typed_at_root; }
        subtype_c_t* typed_here1() const { return m_typed_here1; }
        subtype_cc_t* typed_here2() const { return m_typed_here2; }
        nested_types2_t* _root() const { return m__root; }
        nested_types2_t* _parent() const { return m__parent; }
    };

    class subtype_b_t : public kaitai::kstruct {

    public:

        subtype_b_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, nested_types2_t* p__root = 0);

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
    subtype_a_t* m_one;
    subtype_b_t* m_two;
    nested_types2_t* m__root;
    kaitai::kstruct* m__parent;

public:
    subtype_a_t* one() const { return m_one; }
    subtype_b_t* two() const { return m_two; }
    nested_types2_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // NESTED_TYPES2_H_
