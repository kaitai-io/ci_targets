#ifndef DEFAULT_ENDIAN_MOD_H_
#define DEFAULT_ENDIAN_MOD_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class defaultEndianMod_t : public kaitai::kstruct {

public:
    class mainObj_t;

    defaultEndianMod_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, defaultEndianMod_t* p__root = 0);

private:
    void _read();

public:
    ~defaultEndianMod_t();

    class mainObj_t : public kaitai::kstruct {

    public:
        class subnest_t;
        class subnestBe_t;

        mainObj_t(kaitai::kstream* p__io, defaultEndianMod_t* p__parent = 0, defaultEndianMod_t* p__root = 0);

    private:
        void _read();

    public:
        ~mainObj_t();

        class subnest_t : public kaitai::kstruct {

        public:

            subnest_t(kaitai::kstream* p__io, defaultEndianMod_t::mainObj_t* p__parent = 0, defaultEndianMod_t* p__root = 0);

        private:
            void _read();

        public:
            ~subnest_t();

        private:
            int32_t m_two;
            defaultEndianMod_t* m__root;
            defaultEndianMod_t::mainObj_t* m__parent;

        public:
            int32_t two() const { return m_two; }
            defaultEndianMod_t* _root() const { return m__root; }
            defaultEndianMod_t::mainObj_t* _parent() const { return m__parent; }
        };

        class subnestBe_t : public kaitai::kstruct {

        public:

            subnestBe_t(kaitai::kstream* p__io, defaultEndianMod_t::mainObj_t* p__parent = 0, defaultEndianMod_t* p__root = 0);

        private:
            void _read();

        public:
            ~subnestBe_t();

        private:
            int32_t m_two;
            defaultEndianMod_t* m__root;
            defaultEndianMod_t::mainObj_t* m__parent;

        public:
            int32_t two() const { return m_two; }
            defaultEndianMod_t* _root() const { return m__root; }
            defaultEndianMod_t::mainObj_t* _parent() const { return m__parent; }
        };

    private:
        int32_t m_one;
        subnest_t* m_nest;
        subnestBe_t* m_nest_be;
        defaultEndianMod_t* m__root;
        defaultEndianMod_t* m__parent;

    public:
        int32_t one() const { return m_one; }
        subnest_t* nest() const { return m_nest; }
        subnestBe_t* nest_be() const { return m_nest_be; }
        defaultEndianMod_t* _root() const { return m__root; }
        defaultEndianMod_t* _parent() const { return m__parent; }
    };

private:
    mainObj_t* m_main;
    defaultEndianMod_t* m__root;
    kaitai::kstruct* m__parent;

public:
    mainObj_t* main() const { return m_main; }
    defaultEndianMod_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // DEFAULT_ENDIAN_MOD_H_
