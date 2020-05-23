#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class nested_type_param_t : public kaitai::kstruct {

public:
    class nested_t;

    nested_type_param_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, nested_type_param_t* p__root = nullptr);

private:
    void _read();

public:
    ~nested_type_param_t();

    class nested_t : public kaitai::kstruct {

    public:
        class my_type_t;

        nested_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, nested_type_param_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~nested_t();

        class my_type_t : public kaitai::kstruct {

        public:

            my_type_t(uint32_t p_my_len, kaitai::kstream* p__io, nested_type_param_t* p__parent = nullptr, nested_type_param_t* p__root = nullptr);

        private:
            void _read();

        public:
            ~my_type_t();

        private:
            std::string m_body;
            uint32_t m_my_len;
            nested_type_param_t* m__root;
            nested_type_param_t* m__parent;

        public:
            std::string body() const { return m_body; }
            uint32_t my_len() const { return m_my_len; }
            nested_type_param_t* _root() const { return m__root; }
            nested_type_param_t* _parent() const { return m__parent; }
        };

    private:
        nested_type_param_t* m__root;
        kaitai::kstruct* m__parent;

    public:
        nested_type_param_t* _root() const { return m__root; }
        kaitai::kstruct* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<nested_t::my_type_t> m_main_seq;
    nested_type_param_t* m__root;
    kaitai::kstruct* m__parent;

public:
    nested_t::my_type_t* main_seq() const { return m_main_seq.get(); }
    nested_type_param_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
