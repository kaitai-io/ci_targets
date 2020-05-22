#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class repeat_n_strz_double_t : public kaitai::kstruct {

public:

    repeat_n_strz_double_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, repeat_n_strz_double_t* p__root = nullptr);

private:
    void _read();

public:
    ~repeat_n_strz_double_t();

private:
    uint32_t m_qty;
    std::unique_ptr<std::vector<std::string>> m_lines1;
    std::unique_ptr<std::vector<std::string>> m_lines2;
    repeat_n_strz_double_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint32_t qty() const { return m_qty; }
    std::vector<std::string>* lines1() const { return m_lines1.get(); }
    std::vector<std::string>* lines2() const { return m_lines2.get(); }
    repeat_n_strz_double_t* _root() const { return m__root; }
    virtual kaitai::kstruct* _parent() const { return m__parent; }
};
