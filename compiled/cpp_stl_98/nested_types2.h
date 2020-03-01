#ifndef NESTED_TYPES2_H_
#define NESTED_TYPES2_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class nestedTypes2_t : public kaitai::kstruct {

public:
    class subtypeA_t;
    class subtypeB_t;

    nestedTypes2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, nestedTypes2_t* p__root = 0);

private:
    void _read();

public:
    ~nestedTypes2_t();

    class subtypeA_t : public kaitai::kstruct {

    public:
        class subtypeC_t;
        class subtypeCc_t;

        subtypeA_t(kaitai::kstream* p__io, nestedTypes2_t* p__parent = 0, nestedTypes2_t* p__root = 0);

    private:
        void _read();

    public:
        ~subtypeA_t();

        class subtypeC_t : public kaitai::kstruct {

        public:
            class subtypeD_t;

            subtypeC_t(kaitai::kstream* p__io, nestedTypes2_t::subtypeA_t* p__parent = 0, nestedTypes2_t* p__root = 0);

        private:
            void _read();

        public:
            ~subtypeC_t();

            class subtypeD_t : public kaitai::kstruct {

            public:

                subtypeD_t(kaitai::kstream* p__io, nestedTypes2_t::subtypeA_t::subtypeC_t* p__parent = 0, nestedTypes2_t* p__root = 0);

            private:
                void _read();

            public:
                ~subtypeD_t();

            private:
                int8_t m_value_d;
                nestedTypes2_t* m__root;
                nestedTypes2_t::subtypeA_t::subtypeC_t* m__parent;

            public:
                int8_t value_d() const { return m_value_d; }
                nestedTypes2_t* _root() const { return m__root; }
                nestedTypes2_t::subtypeA_t::subtypeC_t* _parent() const { return m__parent; }
            };

        private:
            int8_t m_value_c;
            subtypeD_t* m_typed_here;
            subtypeCc_t* m_typed_parent;
            subtypeB_t* m_typed_root;
            nestedTypes2_t* m__root;
            nestedTypes2_t::subtypeA_t* m__parent;

        public:
            int8_t value_c() const { return m_value_c; }
            subtypeD_t* typed_here() const { return m_typed_here; }
            subtypeCc_t* typed_parent() const { return m_typed_parent; }
            subtypeB_t* typed_root() const { return m_typed_root; }
            nestedTypes2_t* _root() const { return m__root; }
            nestedTypes2_t::subtypeA_t* _parent() const { return m__parent; }
        };

        class subtypeCc_t : public kaitai::kstruct {

        public:

            subtypeCc_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, nestedTypes2_t* p__root = 0);

        private:
            void _read();

        public:
            ~subtypeCc_t();

        private:
            int8_t m_value_cc;
            nestedTypes2_t* m__root;
            kaitai::kstruct* m__parent;

        public:
            int8_t value_cc() const { return m_value_cc; }
            nestedTypes2_t* _root() const { return m__root; }
            kaitai::kstruct* _parent() const { return m__parent; }
        };

    private:
        subtypeB_t* m_typed_at_root;
        subtypeC_t* m_typed_here1;
        subtypeCc_t* m_typed_here2;
        nestedTypes2_t* m__root;
        nestedTypes2_t* m__parent;

    public:
        subtypeB_t* typed_at_root() const { return m_typed_at_root; }
        subtypeC_t* typed_here1() const { return m_typed_here1; }
        subtypeCc_t* typed_here2() const { return m_typed_here2; }
        nestedTypes2_t* _root() const { return m__root; }
        nestedTypes2_t* _parent() const { return m__parent; }
    };

    class subtypeB_t : public kaitai::kstruct {

    public:

        subtypeB_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, nestedTypes2_t* p__root = 0);

    private:
        void _read();

    public:
        ~subtypeB_t();

    private:
        int8_t m_value_b;
        nestedTypes2_t* m__root;
        kaitai::kstruct* m__parent;

    public:
        int8_t value_b() const { return m_value_b; }
        nestedTypes2_t* _root() const { return m__root; }
        kaitai::kstruct* _parent() const { return m__parent; }
    };

private:
    subtypeA_t* m_one;
    subtypeB_t* m_two;
    nestedTypes2_t* m__root;
    kaitai::kstruct* m__parent;

public:
    subtypeA_t* one() const { return m_one; }
    subtypeB_t* two() const { return m_two; }
    nestedTypes2_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // NESTED_TYPES2_H_
