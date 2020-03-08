#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class process_repeat_bytes_t : public kaitai::kstruct {

public:

    process_repeat_bytes_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, process_repeat_bytes_t* p__root = nullptr);

private:
    void _read();

public:
    ~process_repeat_bytes_t();

private:
    std::unique_ptr<std::vector<std::string>> m_bufs;
    process_repeat_bytes_t* m__root;
    kaitai::kstruct* m__parent;
    std::unique_ptr<std::vector<std::string>> m__raw_bufs;
    std::unique_ptr<std::vector<kaitai::kstream*>> m__io_bufs;

public:
    std::unique_ptr<std::vector<std::string>> bufs() const { return m_bufs.get(); }
    process_repeat_bytes_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::unique_ptr<std::vector<std::string>> _raw_bufs() const { return m__raw_bufs.get(); }
    std::unique_ptr<std::vector<kaitai::kstream*>> _io_bufs() const { return m__io_bufs.get(); }
};
