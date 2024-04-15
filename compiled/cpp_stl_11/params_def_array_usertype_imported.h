#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class params_def_array_usertype_imported_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include "hello_world.h"
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class params_def_array_usertype_imported_t : public kaitai::kstruct {

public:

    params_def_array_usertype_imported_t(std::vector<hello_world_t*>* p_hws_param, kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, params_def_array_usertype_imported_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~params_def_array_usertype_imported_t();

private:
    bool f_hw0_one;
    uint8_t m_hw0_one;

public:
    uint8_t hw0_one();

private:
    bool f_hw1_one;
    uint8_t m_hw1_one;

public:
    uint8_t hw1_one();

private:
    std::vector<hello_world_t*>* m_hws_param;
    params_def_array_usertype_imported_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<hello_world_t*>* hws_param() const { return m_hws_param; }
    params_def_array_usertype_imported_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
