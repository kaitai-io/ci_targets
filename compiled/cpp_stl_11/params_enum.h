#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class paramsEnum_t : public kaitai::kstruct {

public:
    class withParam_t;

    enum animal_t {
        ANIMAL_DOG = 4,
        ANIMAL_CAT = 7,
        ANIMAL_CHICKEN = 12
    };

    paramsEnum_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, paramsEnum_t* p__root = nullptr);

private:
    void _read();

public:
    ~paramsEnum_t();

    class withParam_t : public kaitai::kstruct {

    public:

        withParam_t(animal_t p_enumerated_one, kaitai::kstream* p__io, paramsEnum_t* p__parent = nullptr, paramsEnum_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~withParam_t();

    private:
        bool f_is_cat;
        bool m_is_cat;

    public:
        bool is_cat();

    private:
        animal_t m_enumerated_one;
        paramsEnum_t* m__root;
        paramsEnum_t* m__parent;

    public:
        animal_t enumerated_one() const { return m_enumerated_one; }
        paramsEnum_t* _root() const { return m__root; }
        paramsEnum_t* _parent() const { return m__parent; }
    };

private:
    animal_t m_one;
    std::unique_ptr<withParam_t> m_invoke_with_param;
    paramsEnum_t* m__root;
    kaitai::kstruct* m__parent;

public:
    animal_t one() const { return m_one; }
    withParam_t* invoke_with_param() const { return m_invoke_with_param.get(); }
    paramsEnum_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
