#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"

#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class enum_deep_t : public kaitai::kstruct {

public:
    class container1_t;

    enum_deep_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, enum_deep_t* p__root = nullptr);

private:
    void _read();

public:
    ~enum_deep_t();

    class container1_t : public kaitai::kstruct {

    public:
        class container2_t;

        enum animal_t {
            ANIMAL_DOG = 4,
            ANIMAL_CAT = 7,
            ANIMAL_CHICKEN = 12
        };

        container1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, enum_deep_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~container1_t();

        class container2_t : public kaitai::kstruct {

        public:

            enum animal_t {
                ANIMAL_CANARY = 4,
                ANIMAL_TURTLE = 7,
                ANIMAL_HARE = 12
            };

            container2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, enum_deep_t* p__root = nullptr);

        private:
            void _read();

        public:
            ~container2_t();

        private:
            enum_deep_t* m__root;
            kaitai::kstruct* m__parent;

        public:
            enum_deep_t* _root() const { return m__root; }
            kaitai::kstruct* _parent() const { return m__parent; }
        };

    private:
        enum_deep_t* m__root;
        kaitai::kstruct* m__parent;

    public:
        enum_deep_t* _root() const { return m__root; }
        kaitai::kstruct* _parent() const { return m__parent; }
    };

private:
    container1_t::animal_t m_pet_1;
    container1_t::container2_t::animal_t m_pet_2;
    enum_deep_t* m__root;
    kaitai::kstruct* m__parent;

public:
    container1_t::animal_t pet_1() const { return m_pet_1; }
    container1_t::container2_t::animal_t pet_2() const { return m_pet_2; }
    enum_deep_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
