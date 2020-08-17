#ifndef DEFAULT_ENDIAN_MOD_H_
#define DEFAULT_ENDIAN_MOD_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class default_endian_mod_t : public kaitai::kstruct {

public:
    class main_obj_t;

    default_endian_mod_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, default_endian_mod_t* p__root = 0);

private:
    void _read();

public:

private:
    void _clean_up();

public:
    ~default_endian_mod_t();

    class main_obj_t : public kaitai::kstruct {

    public:
        class subnest_t;
        class subnest_be_t;

        main_obj_t(kaitai::kstream* p__io, default_endian_mod_t* p__parent = 0, default_endian_mod_t* p__root = 0);

    private:
        void _read();

    public:

    private:
        void _clean_up();

    public:
        ~main_obj_t();

        class subnest_t : public kaitai::kstruct {

        public:

            subnest_t(kaitai::kstream* p__io, default_endian_mod_t::main_obj_t* p__parent = 0, default_endian_mod_t* p__root = 0);

        private:
            void _read();

        public:

        private:
            void _clean_up();

        public:
            ~subnest_t();

        private:
            int32_t m_two;
            default_endian_mod_t* m__root;
            default_endian_mod_t::main_obj_t* m__parent;

        public:
            int32_t two() const { return m_two; }
            default_endian_mod_t* _root() const { return m__root; }
            default_endian_mod_t::main_obj_t* _parent() const { return m__parent; }
        };

        class subnest_be_t : public kaitai::kstruct {

        public:

            subnest_be_t(kaitai::kstream* p__io, default_endian_mod_t::main_obj_t* p__parent = 0, default_endian_mod_t* p__root = 0);

        private:
            void _read();

        public:

        private:
            void _clean_up();

        public:
            ~subnest_be_t();

        private:
            int32_t m_two;
            default_endian_mod_t* m__root;
            default_endian_mod_t::main_obj_t* m__parent;

        public:
            int32_t two() const { return m_two; }
            default_endian_mod_t* _root() const { return m__root; }
            default_endian_mod_t::main_obj_t* _parent() const { return m__parent; }
        };

    private:
        int32_t m_one;
        subnest_t* m_nest;
        subnest_be_t* m_nest_be;
        default_endian_mod_t* m__root;
        default_endian_mod_t* m__parent;

    public:
        int32_t one() const { return m_one; }
        subnest_t* nest() const { return m_nest; }
        subnest_be_t* nest_be() const { return m_nest_be; }
        default_endian_mod_t* _root() const { return m__root; }
        default_endian_mod_t* _parent() const { return m__parent; }
    };

private:
    main_obj_t* m_main;
    default_endian_mod_t* m__root;
    kaitai::kstruct* m__parent;

public:
    main_obj_t* main() const { return m_main; }
    default_endian_mod_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // DEFAULT_ENDIAN_MOD_H_
