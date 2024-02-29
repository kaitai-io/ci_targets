#ifndef EXPR_BYTES_OPS_H_
#define EXPR_BYTES_OPS_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class expr_bytes_ops_t : public kaitai::kstruct {

public:

    expr_bytes_ops_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, expr_bytes_ops_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~expr_bytes_ops_t();

private:
    bool f_two_size;
    int32_t m_two_size;

public:
    int32_t two_size();

private:
    bool f_two_last;
    uint8_t m_two_last;

public:
    uint8_t two_last();

private:
    bool f_one_size;
    int32_t m_one_size;

public:
    int32_t one_size();

private:
    bool f_one_mid;
    uint8_t m_one_mid;

public:
    uint8_t one_mid();

private:
    bool f_two_mid;
    uint8_t m_two_mid;

public:
    uint8_t two_mid();

private:
    bool f_one_last;
    uint8_t m_one_last;

public:
    uint8_t one_last();

private:
    bool f_one_min;
    uint8_t m_one_min;

public:
    uint8_t one_min();

private:
    bool f_one_max;
    uint8_t m_one_max;

public:
    uint8_t one_max();

private:
    bool f_two;
    std::string m_two;

public:
    std::string two();

private:
    bool f_two_max;
    uint8_t m_two_max;

public:
    uint8_t two_max();

private:
    bool f_two_min;
    uint8_t m_two_min;

public:
    uint8_t two_min();

private:
    bool f_two_first;
    uint8_t m_two_first;

public:
    uint8_t two_first();

private:
    bool f_one_first;
    uint8_t m_one_first;

public:
    uint8_t one_first();

private:
    std::string m_one;
    expr_bytes_ops_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string one() const { return m_one; }
    expr_bytes_ops_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // EXPR_BYTES_OPS_H_
