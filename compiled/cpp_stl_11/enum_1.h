#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class enum1_t : public kaitai::kstruct {

public:
    class mainObj_t;

    enum1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, enum1_t* p__root = nullptr);

private:
    void _read();

public:
    ~enum1_t();

    class mainObj_t : public kaitai::kstruct {

    public:
        class submainObj_t;

        enum animal_t {
            ANIMAL_DOG = 4,
            ANIMAL_CAT = 7,
            ANIMAL_CHICKEN = 12
        };

        mainObj_t(kaitai::kstream* p__io, enum1_t* p__parent = nullptr, enum1_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~mainObj_t();

        class submainObj_t : public kaitai::kstruct {

        public:

            submainObj_t(kaitai::kstream* p__io, enum1_t::mainObj_t* p__parent = nullptr, enum1_t* p__root = nullptr);

        private:
            void _read();

        public:
            ~submainObj_t();

        private:
            animal_t m_pet_1;
            animal_t m_pet_2;
            enum1_t* m__root;
            enum1_t::mainObj_t* m__parent;

        public:
            animal_t pet_1() const { return m_pet_1; }
            animal_t pet_2() const { return m_pet_2; }
            enum1_t* _root() const { return m__root; }
            enum1_t::mainObj_t* _parent() const { return m__parent; }
        };

    private:
        std::unique_ptr<submainObj_t> m_submain;
        enum1_t* m__root;
        enum1_t* m__parent;

    public:
        submainObj_t* submain() const { return m_submain.get(); }
        enum1_t* _root() const { return m__root; }
        enum1_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<mainObj_t> m_main;
    enum1_t* m__root;
    kaitai::kstruct* m__parent;

public:
    mainObj_t* main() const { return m_main.get(); }
    enum1_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
