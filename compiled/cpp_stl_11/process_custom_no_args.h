#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class process_custom_no_args_t : public kaitai::kstruct {

public:

    process_custom_no_args_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, process_custom_no_args_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~process_custom_no_args_t();

private:
    std::string m_buf;
    process_custom_no_args_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_buf;
    std::unique_ptr<kaitai::kstream> m__io_buf;

public:
    std::string buf() const { return m_buf; }
    process_custom_no_args_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_buf() const { return m__raw_buf; }
    kaitai::kstream* _io_buf() const { return m__io_buf.get(); }
};
