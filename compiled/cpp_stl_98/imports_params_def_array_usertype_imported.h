#ifndef IMPORTS_PARAMS_DEF_ARRAY_USERTYPE_IMPORTED_H_
#define IMPORTS_PARAMS_DEF_ARRAY_USERTYPE_IMPORTED_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class imports_params_def_array_usertype_imported_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include "hello_world.h"
#include "params_def_array_usertype_imported.h"
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class imports_params_def_array_usertype_imported_t : public kaitai::kstruct {

public:

    imports_params_def_array_usertype_imported_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, imports_params_def_array_usertype_imported_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~imports_params_def_array_usertype_imported_t();
    std::vector<hello_world_t*>* hws() const { return m_hws; }
    params_def_array_usertype_imported_t* two() const { return m_two; }
    imports_params_def_array_usertype_imported_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    std::vector<hello_world_t*>* m_hws;
    params_def_array_usertype_imported_t* m_two;
    imports_params_def_array_usertype_imported_t* m__root;
    kaitai::kstruct* m__parent;
};

#endif  // IMPORTS_PARAMS_DEF_ARRAY_USERTYPE_IMPORTED_H_
