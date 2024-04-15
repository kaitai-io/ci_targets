#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class nested_types3_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class nested_types3_t : public kaitai::kstruct {

public:
    class subtype_a_t;
    class subtype_b_t;

    nested_types3_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, nested_types3_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~nested_types3_t();

    class subtype_a_t : public kaitai::kstruct {

    public:
        class subtype_c_t;
        class subtype_cc_t;

        subtype_a_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, nested_types3_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~subtype_a_t();

        class subtype_c_t : public kaitai::kstruct {

        public:
            class subtype_d_t;

            subtype_c_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, nested_types3_t* p__root = nullptr);

        private:
            void _read();
            void _clean_up();

        public:
            ~subtype_c_t();

            class subtype_d_t : public kaitai::kstruct {

            public:

                subtype_d_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, nested_types3_t* p__root = nullptr);

            private:
                void _read();
                void _clean_up();

            public:
                ~subtype_d_t();

            private:
                int8_t m_value_d;
                nested_types3_t* m__root;
                kaitai::kstruct* m__parent;

            public:
                int8_t value_d() const { return m_value_d; }
                nested_types3_t* _root() const { return m__root; }
                kaitai::kstruct* _parent() const { return m__parent; }
            };

        private:
            nested_types3_t* m__root;
            kaitai::kstruct* m__parent;

        public:
            nested_types3_t* _root() const { return m__root; }
            kaitai::kstruct* _parent() const { return m__parent; }
        };

        class subtype_cc_t : public kaitai::kstruct {

        public:

            subtype_cc_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, nested_types3_t* p__root = nullptr);

        private:
            void _read();
            void _clean_up();

        public:
            ~subtype_cc_t();

        private:
            int8_t m_value_cc;
            nested_types3_t* m__root;
            kaitai::kstruct* m__parent;

        public:
            int8_t value_cc() const { return m_value_cc; }
            nested_types3_t* _root() const { return m__root; }
            kaitai::kstruct* _parent() const { return m__parent; }
        };

    private:
        nested_types3_t* m__root;
        kaitai::kstruct* m__parent;

    public:
        nested_types3_t* _root() const { return m__root; }
        kaitai::kstruct* _parent() const { return m__parent; }
    };

    class subtype_b_t : public kaitai::kstruct {

    public:

        subtype_b_t(kaitai::kstream* p__io, nested_types3_t* p__parent = nullptr, nested_types3_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~subtype_b_t();

    private:
        int8_t m_value_b;
        std::unique_ptr<subtype_a_t::subtype_cc_t> m_a_cc;
        std::unique_ptr<subtype_a_t::subtype_c_t::subtype_d_t> m_a_c_d;
        nested_types3_t* m__root;
        nested_types3_t* m__parent;

    public:
        int8_t value_b() const { return m_value_b; }
        subtype_a_t::subtype_cc_t* a_cc() const { return m_a_cc.get(); }
        subtype_a_t::subtype_c_t::subtype_d_t* a_c_d() const { return m_a_c_d.get(); }
        nested_types3_t* _root() const { return m__root; }
        nested_types3_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<subtype_a_t::subtype_cc_t> m_a_cc;
    std::unique_ptr<subtype_a_t::subtype_c_t::subtype_d_t> m_a_c_d;
    std::unique_ptr<subtype_b_t> m_b;
    nested_types3_t* m__root;
    kaitai::kstruct* m__parent;

public:
    subtype_a_t::subtype_cc_t* a_cc() const { return m_a_cc.get(); }
    subtype_a_t::subtype_c_t::subtype_d_t* a_c_d() const { return m_a_c_d.get(); }
    subtype_b_t* b() const { return m_b.get(); }
    nested_types3_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
