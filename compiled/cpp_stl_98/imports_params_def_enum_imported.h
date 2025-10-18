#ifndef IMPORTS_PARAMS_DEF_ENUM_IMPORTED_H_
#define IMPORTS_PARAMS_DEF_ENUM_IMPORTED_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class imports_params_def_enum_imported_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include "params_def_enum_imported.h"
#include "enum_import_seq.h"

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class imports_params_def_enum_imported_t : public kaitai::kstruct {

public:

    imports_params_def_enum_imported_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, imports_params_def_enum_imported_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~imports_params_def_enum_imported_t();
    enum_import_seq_t* one() const { return m_one; }
    params_def_enum_imported_t* two() const { return m_two; }
    imports_params_def_enum_imported_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    enum_import_seq_t* m_one;
    params_def_enum_imported_t* m_two;
    imports_params_def_enum_imported_t* m__root;
    kaitai::kstruct* m__parent;
};

#endif  // IMPORTS_PARAMS_DEF_ENUM_IMPORTED_H_
