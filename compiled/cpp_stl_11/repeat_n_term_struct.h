#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class repeat_n_term_struct_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class repeat_n_term_struct_t : public kaitai::kstruct {

public:
    class bytes_wrapper_t;

    repeat_n_term_struct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, repeat_n_term_struct_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~repeat_n_term_struct_t();

    class bytes_wrapper_t : public kaitai::kstruct {

    public:

        bytes_wrapper_t(kaitai::kstream* p__io, repeat_n_term_struct_t* p__parent = nullptr, repeat_n_term_struct_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~bytes_wrapper_t();

    private:
        std::string m_value;
        repeat_n_term_struct_t* m__root;
        repeat_n_term_struct_t* m__parent;

    public:
        std::string value() const { return m_value; }
        repeat_n_term_struct_t* _root() const { return m__root; }
        repeat_n_term_struct_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<std::vector<std::unique_ptr<bytes_wrapper_t>>> m_records1;
    std::unique_ptr<std::vector<std::unique_ptr<bytes_wrapper_t>>> m_records2;
    std::unique_ptr<std::vector<std::unique_ptr<bytes_wrapper_t>>> m_records3;
    repeat_n_term_struct_t* m__root;
    kaitai::kstruct* m__parent;
    std::unique_ptr<std::vector<std::string>> m__raw_records1;
    std::unique_ptr<std::vector<std::unique_ptr<kaitai::kstream>>> m__io__raw_records1;
    std::unique_ptr<std::vector<std::string>> m__raw_records2;
    std::unique_ptr<std::vector<std::unique_ptr<kaitai::kstream>>> m__io__raw_records2;
    std::unique_ptr<std::vector<std::string>> m__raw_records3;
    std::unique_ptr<std::vector<std::unique_ptr<kaitai::kstream>>> m__io__raw_records3;

public:
    std::vector<std::unique_ptr<bytes_wrapper_t>>* records1() const { return m_records1.get(); }
    std::vector<std::unique_ptr<bytes_wrapper_t>>* records2() const { return m_records2.get(); }
    std::vector<std::unique_ptr<bytes_wrapper_t>>* records3() const { return m_records3.get(); }
    repeat_n_term_struct_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::vector<std::string>* _raw_records1() const { return m__raw_records1.get(); }
    std::vector<std::unique_ptr<kaitai::kstream>>* _io__raw_records1() const { return m__io__raw_records1.get(); }
    std::vector<std::string>* _raw_records2() const { return m__raw_records2.get(); }
    std::vector<std::unique_ptr<kaitai::kstream>>* _io__raw_records2() const { return m__io__raw_records2.get(); }
    std::vector<std::string>* _raw_records3() const { return m__raw_records3.get(); }
    std::vector<std::unique_ptr<kaitai::kstream>>* _io__raw_records3() const { return m__io__raw_records3.get(); }
};
