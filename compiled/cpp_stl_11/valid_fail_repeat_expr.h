#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class valid_fail_repeat_expr_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class valid_fail_repeat_expr_t : public kaitai::kstruct {

public:

    valid_fail_repeat_expr_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, valid_fail_repeat_expr_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~valid_fail_repeat_expr_t();
    std::vector<std::string>* foo() const { return m_foo.get(); }
    valid_fail_repeat_expr_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    std::unique_ptr<std::vector<std::string>> m_foo;
    valid_fail_repeat_expr_t* m__root;
    kaitai::kstruct* m__parent;
};
