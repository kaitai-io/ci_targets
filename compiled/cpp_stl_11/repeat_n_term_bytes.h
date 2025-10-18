#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class repeat_n_term_bytes_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class repeat_n_term_bytes_t : public kaitai::kstruct {

public:

    repeat_n_term_bytes_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, repeat_n_term_bytes_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~repeat_n_term_bytes_t();
    std::vector<std::string>* records1() const { return m_records1.get(); }
    std::vector<std::string>* records2() const { return m_records2.get(); }
    std::vector<std::string>* records3() const { return m_records3.get(); }
    repeat_n_term_bytes_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    std::unique_ptr<std::vector<std::string>> m_records1;
    std::unique_ptr<std::vector<std::string>> m_records2;
    std::unique_ptr<std::vector<std::string>> m_records3;
    repeat_n_term_bytes_t* m__root;
    kaitai::kstruct* m__parent;
};
