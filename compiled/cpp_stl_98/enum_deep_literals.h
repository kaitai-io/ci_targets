#ifndef ENUM_DEEP_LITERALS_H_
#define ENUM_DEEP_LITERALS_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class enum_deep_literals_t : public kaitai::kstruct {

public:
    class container1_t;

    enum_deep_literals_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, enum_deep_literals_t* p__root = 0);

private:
    void _read();

public:
    ~enum_deep_literals_t();

    class container1_t : public kaitai::kstruct {

    public:
        class container2_t;

        enum animal_t {
            ANIMAL_DOG = 4,
            ANIMAL_CAT = 7,
            ANIMAL_CHICKEN = 12
        };

        container1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, enum_deep_literals_t* p__root = 0);

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

            container2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, enum_deep_literals_t* p__root = 0);

        private:
            void _read();

        public:
            ~container2_t();

        private:
            enum_deep_literals_t* m__root;
            kaitai::kstruct* m__parent;

        public:
            enum_deep_literals_t* _root() const { return m__root; }
            kaitai::kstruct* _parent() const { return m__parent; }
        };

    private:
        enum_deep_literals_t* m__root;
        kaitai::kstruct* m__parent;

    public:
        enum_deep_literals_t* _root() const { return m__root; }
        kaitai::kstruct* _parent() const { return m__parent; }
    };

private:
    bool f_is_pet_1_ok;
    bool m_is_pet_1_ok;

public:
    bool is_pet_1_ok();

private:
    bool f_is_pet_2_ok;
    bool m_is_pet_2_ok;

public:
    bool is_pet_2_ok();

private:
    container1_t::animal_t m_pet_1;
    container1_t::container2_t::animal_t m_pet_2;
    enum_deep_literals_t* m__root;
    kaitai::kstruct* m__parent;

public:
    container1_t::animal_t pet_1() const { return m_pet_1; }
    container1_t::container2_t::animal_t pet_2() const { return m_pet_2; }
    enum_deep_literals_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // ENUM_DEEP_LITERALS_H_
