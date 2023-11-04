#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class enum_1_t : public kaitai::kstruct {

public:
    class main_obj_t;

    enum_1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, enum_1_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~enum_1_t();

    class main_obj_t : public kaitai::kstruct {

    public:
        class submain_obj_t;

        enum animal_t {
            ANIMAL_DOG = 4,
            ANIMAL_CAT = 7,
            ANIMAL_CHICKEN = 12
        };

        main_obj_t(kaitai::kstream* p__io, enum_1_t* p__parent = nullptr, enum_1_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~main_obj_t();

        class submain_obj_t : public kaitai::kstruct {

        public:

            submain_obj_t(kaitai::kstream* p__io, enum_1_t::main_obj_t* p__parent = nullptr, enum_1_t* p__root = nullptr);

        private:
            void _read();
            void _clean_up();

        public:
            ~submain_obj_t();

        private:
            animal_t m_pet_1;
            animal_t m_pet_2;
            enum_1_t* m__root;
            enum_1_t::main_obj_t* m__parent;

        public:
            animal_t pet_1() const { return m_pet_1; }
            animal_t pet_2() const { return m_pet_2; }
            enum_1_t* _root() const { return m__root; }
            enum_1_t::main_obj_t* _parent() const { return m__parent; }
        };

    private:
        std::unique_ptr<submain_obj_t> m_submain;
        enum_1_t* m__root;
        enum_1_t* m__parent;

    public:
        submain_obj_t* submain() const { return m_submain.get(); }
        enum_1_t* _root() const { return m__root; }
        enum_1_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<main_obj_t> m_main;
    enum_1_t* m__root;
    kaitai::kstruct* m__parent;

public:
    main_obj_t* main() const { return m_main.get(); }
    enum_1_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
