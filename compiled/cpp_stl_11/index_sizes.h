#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class index_sizes_t : public kaitai::kstruct {

public:

    index_sizes_t(kaitai::kstream* p__io, std::unique_ptr<kaitai::kstruct> p__parent = nullptr, index_sizes_t* p__root = nullptr);

private:
    void _read();

public:
    ~index_sizes_t();

private:
    uint32_t m_qty;
    std::unique_ptr<std::vector<uint32_t>> m_sizes;
    std::unique_ptr<std::vector<std::string>> m_bufs;
    index_sizes_t* m__root;
    std::unique_ptr<kaitai::kstruct> m__parent;

public:
    uint32_t qty() const { return m_qty; }
    std::vector<uint32_t>* sizes() const { return m_sizes.get(); }
    std::vector<std::string>* bufs() const { return m_bufs.get(); }
    index_sizes_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent.get(); }
};
