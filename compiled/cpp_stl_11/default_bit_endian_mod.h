#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class default_bit_endian_mod_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class default_bit_endian_mod_t : public kaitai::kstruct {

public:
    class main_obj_t;

    default_bit_endian_mod_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, default_bit_endian_mod_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~default_bit_endian_mod_t();

    class main_obj_t : public kaitai::kstruct {

    public:
        class subnest_t;
        class subnest_be_t;

        main_obj_t(kaitai::kstream* p__io, default_bit_endian_mod_t* p__parent = nullptr, default_bit_endian_mod_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~main_obj_t();

        class subnest_t : public kaitai::kstruct {

        public:

            subnest_t(kaitai::kstream* p__io, default_bit_endian_mod_t::main_obj_t* p__parent = nullptr, default_bit_endian_mod_t* p__root = nullptr);

        private:
            void _read();
            void _clean_up();

        public:
            ~subnest_t();

        private:
            uint64_t m_two;
            default_bit_endian_mod_t* m__root;
            default_bit_endian_mod_t::main_obj_t* m__parent;

        public:
            uint64_t two() const { return m_two; }
            default_bit_endian_mod_t* _root() const { return m__root; }
            default_bit_endian_mod_t::main_obj_t* _parent() const { return m__parent; }
        };

        class subnest_be_t : public kaitai::kstruct {

        public:

            subnest_be_t(kaitai::kstream* p__io, default_bit_endian_mod_t::main_obj_t* p__parent = nullptr, default_bit_endian_mod_t* p__root = nullptr);

        private:
            void _read();
            void _clean_up();

        public:
            ~subnest_be_t();

        private:
            uint64_t m_two;
            default_bit_endian_mod_t* m__root;
            default_bit_endian_mod_t::main_obj_t* m__parent;

        public:
            uint64_t two() const { return m_two; }
            default_bit_endian_mod_t* _root() const { return m__root; }
            default_bit_endian_mod_t::main_obj_t* _parent() const { return m__parent; }
        };

    private:
        uint64_t m_one;
        uint64_t m_two;
        std::unique_ptr<subnest_t> m_nest;
        std::unique_ptr<subnest_be_t> m_nest_be;
        default_bit_endian_mod_t* m__root;
        default_bit_endian_mod_t* m__parent;

    public:
        uint64_t one() const { return m_one; }
        uint64_t two() const { return m_two; }
        subnest_t* nest() const { return m_nest.get(); }
        subnest_be_t* nest_be() const { return m_nest_be.get(); }
        default_bit_endian_mod_t* _root() const { return m__root; }
        default_bit_endian_mod_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<main_obj_t> m_main;
    default_bit_endian_mod_t* m__root;
    kaitai::kstruct* m__parent;

public:
    main_obj_t* main() const { return m_main.get(); }
    default_bit_endian_mod_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
