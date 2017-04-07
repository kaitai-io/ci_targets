#ifndef TYPE_INT_UNARY_OP_H_
#define TYPE_INT_UNARY_OP_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <kaitai/kaitaistream.h>

#include <stdint.h>
#include <vector>
#include <sstream>
#include <algorithm>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class type_int_unary_op_t : public kaitai::kstruct {

public:

    type_int_unary_op_t(kaitai::kstream* p_io, kaitai::kstruct* p_parent = 0, type_int_unary_op_t* p_root = 0);
    ~type_int_unary_op_t();

private:
    bool f_unary_s2;
    int32_t m_unary_s2;

public:
    int32_t unary_s2();

private:
    bool f_unary_s8;
    int64_t m_unary_s8;

public:
    int64_t unary_s8();

private:
    int16_t m_value_s2;
    int64_t m_value_s8;
    type_int_unary_op_t* m__root;
    kaitai::kstruct* m__parent;

public:
    int16_t value_s2() const { return m_value_s2; }
    int64_t value_s8() const { return m_value_s8; }
    type_int_unary_op_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // TYPE_INT_UNARY_OP_H_
