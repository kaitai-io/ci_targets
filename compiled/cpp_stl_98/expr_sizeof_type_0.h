#ifndef EXPR_SIZEOF_TYPE_0_H_
#define EXPR_SIZEOF_TYPE_0_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"

#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class expr_sizeof_type_0_t : public kaitai::kstruct {

public:
    class block_t;

    expr_sizeof_type_0_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, expr_sizeof_type_0_t* p__root = 0);

private:
    void _read();

public:
    ~expr_sizeof_type_0_t();

    class block_t : public kaitai::kstruct {

    public:

        block_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, expr_sizeof_type_0_t* p__root = 0);

    private:
        void _read();

    public:
        ~block_t();

    private:
        uint8_t m_a;
        uint32_t m_b;
        std::string m_c;
        expr_sizeof_type_0_t* m__root;
        kaitai::kstruct* m__parent;

    public:
        uint8_t a() const { return m_a; }
        uint32_t b() const { return m_b; }
        std::string c() const { return m_c; }
        expr_sizeof_type_0_t* _root() const { return m__root; }
        kaitai::kstruct* _parent() const { return m__parent; }
    };

private:
    bool f_sizeof_block;
    int32_t m_sizeof_block;

public:
    int32_t sizeof_block();

private:
    expr_sizeof_type_0_t* m__root;
    kaitai::kstruct* m__parent;

public:
    expr_sizeof_type_0_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // EXPR_SIZEOF_TYPE_0_H_
