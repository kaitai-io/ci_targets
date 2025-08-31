#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class expr_if_int_ops_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class expr_if_int_ops_t : public kaitai::kstruct {

public:

    expr_if_int_ops_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, expr_if_int_ops_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~expr_if_int_ops_t();

private:
    bool f_bytes_sub_key;
    uint8_t m_bytes_sub_key;

public:
    uint8_t bytes_sub_key();

private:
    bool f_items_sub_key;
    int8_t m_items_sub_key;

public:
    int8_t items_sub_key();

private:
    uint64_t m_key;
    bool n_key;

public:
    bool _is_null_key() { key(); return n_key; };

private:
    std::string m_skip;
    std::string m_bytes;
    std::unique_ptr<std::vector<int8_t>> m_items;
    expr_if_int_ops_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_bytes;

public:
    uint64_t key() const { return m_key; }
    std::string skip() const { return m_skip; }
    std::string bytes() const { return m_bytes; }
    std::vector<int8_t>* items() const { return m_items.get(); }
    expr_if_int_ops_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_bytes() const { return m__raw_bytes; }
};
