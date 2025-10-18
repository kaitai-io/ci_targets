#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class integers_double_overflow_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class integers_double_overflow_t : public kaitai::kstruct {

public:

    integers_double_overflow_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, integers_double_overflow_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~integers_double_overflow_t();
    uint64_t unsigned_safe_max_be();
    uint64_t unsigned_safe_max_le();
    uint64_t unsigned_unsafe_pos_be();
    uint64_t unsigned_unsafe_pos_le();
    int64_t signed_safe_min_be() const { return m_signed_safe_min_be; }
    int64_t signed_safe_min_le() const { return m_signed_safe_min_le; }
    int64_t signed_safe_max_be() const { return m_signed_safe_max_be; }
    int64_t signed_safe_max_le() const { return m_signed_safe_max_le; }
    int64_t signed_unsafe_neg_be() const { return m_signed_unsafe_neg_be; }
    int64_t signed_unsafe_neg_le() const { return m_signed_unsafe_neg_le; }
    int64_t signed_unsafe_pos_be() const { return m_signed_unsafe_pos_be; }
    int64_t signed_unsafe_pos_le() const { return m_signed_unsafe_pos_le; }
    integers_double_overflow_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_unsigned_safe_max_be;
    uint64_t m_unsigned_safe_max_be;
    bool f_unsigned_safe_max_le;
    uint64_t m_unsigned_safe_max_le;
    bool f_unsigned_unsafe_pos_be;
    uint64_t m_unsigned_unsafe_pos_be;
    bool f_unsigned_unsafe_pos_le;
    uint64_t m_unsigned_unsafe_pos_le;
    int64_t m_signed_safe_min_be;
    int64_t m_signed_safe_min_le;
    int64_t m_signed_safe_max_be;
    int64_t m_signed_safe_max_le;
    int64_t m_signed_unsafe_neg_be;
    int64_t m_signed_unsafe_neg_le;
    int64_t m_signed_unsafe_pos_be;
    int64_t m_signed_unsafe_pos_le;
    integers_double_overflow_t* m__root;
    kaitai::kstruct* m__parent;
};
