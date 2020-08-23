#ifndef EXPR_IF_INT_OPS_H_
#define EXPR_IF_INT_OPS_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class expr_if_int_ops_t : public kaitai::kstruct {

public:

    expr_if_int_ops_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, expr_if_int_ops_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~expr_if_int_ops_t();

private:
    bool f_is_eq_prim;
    bool m_is_eq_prim;

public:
    bool is_eq_prim();

private:
    bool f_is_eq_boxed;
    bool m_is_eq_boxed;

public:
    bool is_eq_boxed();

private:
    std::string m_skip;
    int16_t m_it;
    bool n_it;

public:
    bool _is_null_it() { it(); return n_it; };

private:
    int16_t m_boxed;
    bool n_boxed;

public:
    bool _is_null_boxed() { boxed(); return n_boxed; };

private:
    expr_if_int_ops_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string skip() const { return m_skip; }
    int16_t it() const { return m_it; }
    int16_t boxed() const { return m_boxed; }
    expr_if_int_ops_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // EXPR_IF_INT_OPS_H_
