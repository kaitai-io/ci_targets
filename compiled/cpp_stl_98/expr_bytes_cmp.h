#ifndef EXPR_BYTES_CMP_H_
#define EXPR_BYTES_CMP_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class exprBytesCmp_t : public kaitai::kstruct {

public:

    exprBytesCmp_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, exprBytesCmp_t* p__root = 0);

private:
    void _read();

public:
    ~exprBytesCmp_t();

private:
    bool f_is_le;
    bool m_is_le;

public:
    bool is_le();

private:
    bool f_ack;
    std::string m_ack;

public:
    std::string ack();

private:
    bool f_is_gt2;
    bool m_is_gt2;

public:
    bool is_gt2();

private:
    bool f_is_gt;
    bool m_is_gt;

public:
    bool is_gt();

private:
    bool f_ack2;
    std::string m_ack2;

public:
    std::string ack2();

private:
    bool f_is_eq;
    bool m_is_eq;

public:
    bool is_eq();

private:
    bool f_is_lt2;
    bool m_is_lt2;

public:
    bool is_lt2();

private:
    bool f_is_ge;
    bool m_is_ge;

public:
    bool is_ge();

private:
    bool f_hi_val;
    std::string m_hi_val;

public:
    std::string hi_val();

private:
    bool f_is_ne;
    bool m_is_ne;

public:
    bool is_ne();

private:
    bool f_is_lt;
    bool m_is_lt;

public:
    bool is_lt();

private:
    std::string m_one;
    std::string m_two;
    exprBytesCmp_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string one() const { return m_one; }
    std::string two() const { return m_two; }
    exprBytesCmp_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // EXPR_BYTES_CMP_H_
