#ifndef PARAMS_ENUM_H_
#define PARAMS_ENUM_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class params_enum_t : public kaitai::kstruct {

public:
    class with_param_t;

    enum animal_t {
        ANIMAL_DOG = 4,
        ANIMAL_CAT = 7,
        ANIMAL_CHICKEN = 12
    };

    params_enum_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, params_enum_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~params_enum_t();

    class with_param_t : public kaitai::kstruct {

    public:

        with_param_t(animal_t p_enumerated_one, kaitai::kstream* p__io, params_enum_t* p__parent = 0, params_enum_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~with_param_t();

    private:
        bool f_is_cat;
        bool m_is_cat;

    public:
        bool is_cat();

    private:
        animal_t m_enumerated_one;
        params_enum_t* m__root;
        params_enum_t* m__parent;

    public:
        animal_t enumerated_one() const { return m_enumerated_one; }
        params_enum_t* _root() const { return m__root; }
        params_enum_t* _parent() const { return m__parent; }
    };

private:
    animal_t m_one;
    with_param_t* m_invoke_with_param;
    params_enum_t* m__root;
    kaitai::kstruct* m__parent;

public:
    animal_t one() const { return m_one; }
    with_param_t* invoke_with_param() const { return m_invoke_with_param; }
    params_enum_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // PARAMS_ENUM_H_
