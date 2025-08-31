#ifndef EXPR_IO_POS_BITS_H_
#define EXPR_IO_POS_BITS_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class expr_io_pos_bits_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class expr_io_pos_bits_t : public kaitai::kstruct {

public:

    expr_io_pos_bits_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, expr_io_pos_bits_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~expr_io_pos_bits_t();

private:
    uint64_t m_foo;
    uint64_t m_bar;
    bool n_bar;

public:
    bool _is_null_bar() { bar(); return n_bar; };

private:
    bool m_baz;
    bool n_baz;

public:
    bool _is_null_baz() { baz(); return n_baz; };

private:
    uint64_t m_qux;
    bool n_qux;

public:
    bool _is_null_qux() { qux(); return n_qux; };

private:
    expr_io_pos_bits_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint64_t foo() const { return m_foo; }
    uint64_t bar() const { return m_bar; }
    bool baz() const { return m_baz; }
    uint64_t qux() const { return m_qux; }
    expr_io_pos_bits_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // EXPR_IO_POS_BITS_H_
