#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class nested_types_t : public kaitai::kstruct {

public:
    class subtype_a_t;
    class subtype_b_t;

    nested_types_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, nested_types_t* p__root = nullptr);

private:
    void _read();

public:
    ~nested_types_t();

    class subtype_a_t : public kaitai::kstruct {

    public:
        class subtype_c_t;

        subtype_a_t(kaitai::kstream* p__io, nested_types_t* p__parent = nullptr, nested_types_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~subtype_a_t();

        class subtype_c_t : public kaitai::kstruct {

        public:

            subtype_c_t(kaitai::kstream* p__io, nested_types_t::subtype_a_t* p__parent = nullptr, nested_types_t* p__root = nullptr);

        private:
            void _read();

        public:
            ~subtype_c_t();

        private:
            int8_t m_value_c;
            nested_types_t* m__root;
            nested_types_t::subtype_a_t* m__parent;

        public:
            int8_t value_c() const { return m_value_c; }
            nested_types_t* _root() const { return m__root; }
            nested_types_t::subtype_a_t* _parent() const { return m__parent; }
        };

    private:
        std::unique_ptr<subtype_b_t> m_typed_at_root;
        std::unique_ptr<subtype_c_t> m_typed_here;
        nested_types_t* m__root;
        nested_types_t* m__parent;

    public:
        subtype_b_t* typed_at_root() const { return m_typed_at_root.get(); }
        subtype_c_t* typed_here() const { return m_typed_here.get(); }
        nested_types_t* _root() const { return m__root; }
        nested_types_t* _parent() const { return m__parent; }
    };

    class subtype_b_t : public kaitai::kstruct {

    public:

        subtype_b_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, nested_types_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~subtype_b_t();

    private:
        int8_t m_value_b;
        nested_types_t* m__root;
        kaitai::kstruct* m__parent;

    public:
        int8_t value_b() const { return m_value_b; }
        nested_types_t* _root() const { return m__root; }
        kaitai::kstruct* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<subtype_a_t> m_one;
    std::unique_ptr<subtype_b_t> m_two;
    nested_types_t* m__root;
    kaitai::kstruct* m__parent;

public:
    subtype_a_t* one() const { return m_one.get(); }
    subtype_b_t* two() const { return m_two.get(); }
    nested_types_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
