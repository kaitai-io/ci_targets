#ifndef PARAMS_DEF_USERTYPE_IMPORTED_H_
#define PARAMS_DEF_USERTYPE_IMPORTED_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class params_def_usertype_imported_t : public kaitai::kstruct {

public:
    class hello_world_t;

    params_def_usertype_imported_t(hello_world_t* p_hw_param, kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, params_def_usertype_imported_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~params_def_usertype_imported_t();

private:
    bool f_hw_one;
    uint8_t m_hw_one;

public:
    uint8_t hw_one();

private:
    hello_world_t* m_hw_param;
    params_def_usertype_imported_t* m__root;
    kaitai::kstruct* m__parent;

public:
    hello_world_t* hw_param() const { return m_hw_param; }
    params_def_usertype_imported_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // PARAMS_DEF_USERTYPE_IMPORTED_H_
