#ifndef MULTIPLE_USE_H_
#define MULTIPLE_USE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"

#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class multiple_use_t : public kaitai::kstruct {

public:
    class multi_t;
    class type_1_t;
    class type_2_t;

    multiple_use_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, multiple_use_t* p__root = 0);

private:
    void _read();

public:
    ~multiple_use_t();

    class multi_t : public kaitai::kstruct {

    public:

        multi_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, multiple_use_t* p__root = 0);

    private:
        void _read();

    public:
        ~multi_t();

    private:
        int32_t m_value;
        multiple_use_t* m__root;
        kaitai::kstruct* m__parent;

    public:
        int32_t value() const { return m_value; }
        multiple_use_t* _root() const { return m__root; }
        kaitai::kstruct* _parent() const { return m__parent; }
    };

    class type_1_t : public kaitai::kstruct {

    public:

        type_1_t(kaitai::kstream* p__io, multiple_use_t* p__parent = 0, multiple_use_t* p__root = 0);

    private:
        void _read();

    public:
        ~type_1_t();

    private:
        multi_t* m_first_use;
        multiple_use_t* m__root;
        multiple_use_t* m__parent;

    public:
        multi_t* first_use() const { return m_first_use; }
        multiple_use_t* _root() const { return m__root; }
        multiple_use_t* _parent() const { return m__parent; }
    };

    class type_2_t : public kaitai::kstruct {

    public:

        type_2_t(kaitai::kstream* p__io, multiple_use_t* p__parent = 0, multiple_use_t* p__root = 0);

    private:
        void _read();

    public:
        ~type_2_t();

    private:
        bool f_second_use;
        multi_t* m_second_use;

    public:
        multi_t* second_use();

    private:
        multiple_use_t* m__root;
        multiple_use_t* m__parent;

    public:
        multiple_use_t* _root() const { return m__root; }
        multiple_use_t* _parent() const { return m__parent; }
    };

private:
    type_1_t* m_t1;
    type_2_t* m_t2;
    multiple_use_t* m__root;
    kaitai::kstruct* m__parent;

public:
    type_1_t* t1() const { return m_t1; }
    type_2_t* t2() const { return m_t2; }
    multiple_use_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // MULTIPLE_USE_H_
