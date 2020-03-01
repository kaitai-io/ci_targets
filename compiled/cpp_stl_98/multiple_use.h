#ifndef MULTIPLE_USE_H_
#define MULTIPLE_USE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class multipleUse_t : public kaitai::kstruct {

public:
    class multi_t;
    class type1_t;
    class type2_t;

    multipleUse_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, multipleUse_t* p__root = 0);

private:
    void _read();

public:
    ~multipleUse_t();

    class multi_t : public kaitai::kstruct {

    public:

        multi_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, multipleUse_t* p__root = 0);

    private:
        void _read();

    public:
        ~multi_t();

    private:
        int32_t m_value;
        multipleUse_t* m__root;
        kaitai::kstruct* m__parent;

    public:
        int32_t value() const { return m_value; }
        multipleUse_t* _root() const { return m__root; }
        kaitai::kstruct* _parent() const { return m__parent; }
    };

    class type1_t : public kaitai::kstruct {

    public:

        type1_t(kaitai::kstream* p__io, multipleUse_t* p__parent = 0, multipleUse_t* p__root = 0);

    private:
        void _read();

    public:
        ~type1_t();

    private:
        multi_t* m_first_use;
        multipleUse_t* m__root;
        multipleUse_t* m__parent;

    public:
        multi_t* first_use() const { return m_first_use; }
        multipleUse_t* _root() const { return m__root; }
        multipleUse_t* _parent() const { return m__parent; }
    };

    class type2_t : public kaitai::kstruct {

    public:

        type2_t(kaitai::kstream* p__io, multipleUse_t* p__parent = 0, multipleUse_t* p__root = 0);

    private:
        void _read();

    public:
        ~type2_t();

    private:
        bool f_second_use;
        multi_t* m_second_use;

    public:
        multi_t* second_use();

    private:
        multipleUse_t* m__root;
        multipleUse_t* m__parent;

    public:
        multipleUse_t* _root() const { return m__root; }
        multipleUse_t* _parent() const { return m__parent; }
    };

private:
    type1_t* m_t1;
    type2_t* m_t2;
    multipleUse_t* m__root;
    kaitai::kstruct* m__parent;

public:
    type1_t* t1() const { return m_t1; }
    type2_t* t2() const { return m_t2; }
    multipleUse_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // MULTIPLE_USE_H_
