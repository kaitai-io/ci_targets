#ifndef NESTED_TYPES3_H_
#define NESTED_TYPES3_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class nestedTypes3_t : public kaitai::kstruct {

public:
    class subtypeA_t;
    class subtypeB_t;

    nestedTypes3_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, nestedTypes3_t* p__root = 0);

private:
    void _read();

public:
    ~nestedTypes3_t();

    class subtypeA_t : public kaitai::kstruct {

    public:
        class subtypeC_t;
        class subtypeCc_t;

        subtypeA_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, nestedTypes3_t* p__root = 0);

    private:
        void _read();

    public:
        ~subtypeA_t();

        class subtypeC_t : public kaitai::kstruct {

        public:
            class subtypeD_t;

            subtypeC_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, nestedTypes3_t* p__root = 0);

        private:
            void _read();

        public:
            ~subtypeC_t();

            class subtypeD_t : public kaitai::kstruct {

            public:

                subtypeD_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, nestedTypes3_t* p__root = 0);

            private:
                void _read();

            public:
                ~subtypeD_t();

            private:
                int8_t m_value_d;
                nestedTypes3_t* m__root;
                kaitai::kstruct* m__parent;

            public:
                int8_t value_d() const { return m_value_d; }
                nestedTypes3_t* _root() const { return m__root; }
                kaitai::kstruct* _parent() const { return m__parent; }
            };

        private:
            nestedTypes3_t* m__root;
            kaitai::kstruct* m__parent;

        public:
            nestedTypes3_t* _root() const { return m__root; }
            kaitai::kstruct* _parent() const { return m__parent; }
        };

        class subtypeCc_t : public kaitai::kstruct {

        public:

            subtypeCc_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, nestedTypes3_t* p__root = 0);

        private:
            void _read();

        public:
            ~subtypeCc_t();

        private:
            int8_t m_value_cc;
            nestedTypes3_t* m__root;
            kaitai::kstruct* m__parent;

        public:
            int8_t value_cc() const { return m_value_cc; }
            nestedTypes3_t* _root() const { return m__root; }
            kaitai::kstruct* _parent() const { return m__parent; }
        };

    private:
        nestedTypes3_t* m__root;
        kaitai::kstruct* m__parent;

    public:
        nestedTypes3_t* _root() const { return m__root; }
        kaitai::kstruct* _parent() const { return m__parent; }
    };

    class subtypeB_t : public kaitai::kstruct {

    public:

        subtypeB_t(kaitai::kstream* p__io, nestedTypes3_t* p__parent = 0, nestedTypes3_t* p__root = 0);

    private:
        void _read();

    public:
        ~subtypeB_t();

    private:
        int8_t m_value_b;
        subtypeA_t::subtypeCc_t* m_a_cc;
        subtypeA_t::subtypeC_t::subtypeD_t* m_a_c_d;
        nestedTypes3_t* m__root;
        nestedTypes3_t* m__parent;

    public:
        int8_t value_b() const { return m_value_b; }
        subtypeA_t::subtypeCc_t* a_cc() const { return m_a_cc; }
        subtypeA_t::subtypeC_t::subtypeD_t* a_c_d() const { return m_a_c_d; }
        nestedTypes3_t* _root() const { return m__root; }
        nestedTypes3_t* _parent() const { return m__parent; }
    };

private:
    subtypeA_t::subtypeCc_t* m_a_cc;
    subtypeA_t::subtypeC_t::subtypeD_t* m_a_c_d;
    subtypeB_t* m_b;
    nestedTypes3_t* m__root;
    kaitai::kstruct* m__parent;

public:
    subtypeA_t::subtypeCc_t* a_cc() const { return m_a_cc; }
    subtypeA_t::subtypeC_t::subtypeD_t* a_c_d() const { return m_a_c_d; }
    subtypeB_t* b() const { return m_b; }
    nestedTypes3_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // NESTED_TYPES3_H_
