#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class name_clash_import_vs_inst_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include "integers.h"

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class name_clash_import_vs_inst_t : public kaitai::kstruct {

public:

    name_clash_import_vs_inst_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, name_clash_import_vs_inst_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~name_clash_import_vs_inst_t();
    integers_t* integers();
    int32_t std();
    name_clash_import_vs_inst_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_integers;
    std::unique_ptr<integers_t> m_integers;
    bool f_std;
    int32_t m_std;
    name_clash_import_vs_inst_t* m__root;
    kaitai::kstruct* m__parent;
};
