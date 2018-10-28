#ifndef INSTANCE_STD_ARRAY_H_
#define INSTANCE_STD_ARRAY_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"

#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class instance_std_array_t : public kaitai::kstruct {

public:

    instance_std_array_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, instance_std_array_t* p__root = 0);

private:
    void _read();

public:
    ~instance_std_array_t();

private:
    bool f_entries;
    std::vector<std::string>* m_entries;

public:
    std::vector<std::string>* entries();

private:
    uint32_t m_ofs;
    uint32_t m_entry_size;
    uint32_t m_qty_entries;
    instance_std_array_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint32_t ofs() const { return m_ofs; }
    uint32_t entry_size() const { return m_entry_size; }
    uint32_t qty_entries() const { return m_qty_entries; }
    instance_std_array_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // INSTANCE_STD_ARRAY_H_
