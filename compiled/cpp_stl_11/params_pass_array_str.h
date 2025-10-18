#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class params_pass_array_str_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class params_pass_array_str_t : public kaitai::kstruct {

public:
    class wants_strs_t;

    params_pass_array_str_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, params_pass_array_str_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~params_pass_array_str_t();

    class wants_strs_t : public kaitai::kstruct {

    public:

        wants_strs_t(std::vector<std::string>* p_strs, kaitai::kstream* p__io, params_pass_array_str_t* p__parent = nullptr, params_pass_array_str_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~wants_strs_t();
        std::vector<std::string>* strs() const { return m_strs; }
        params_pass_array_str_t* _root() const { return m__root; }
        params_pass_array_str_t* _parent() const { return m__parent; }

    private:
        std::vector<std::string>* m_strs;
        params_pass_array_str_t* m__root;
        params_pass_array_str_t* m__parent;
    };

public:
    std::vector<std::string>* str_array_calc();
    std::vector<std::string>* str_array() const { return m_str_array.get(); }
    wants_strs_t* pass_str_array() const { return m_pass_str_array.get(); }
    wants_strs_t* pass_str_array_calc() const { return m_pass_str_array_calc.get(); }
    params_pass_array_str_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_str_array_calc;
    std::unique_ptr<std::vector<std::string>> m_str_array_calc;
    std::unique_ptr<std::vector<std::string>> m_str_array;
    std::unique_ptr<wants_strs_t> m_pass_str_array;
    std::unique_ptr<wants_strs_t> m_pass_str_array_calc;
    params_pass_array_str_t* m__root;
    kaitai::kstruct* m__parent;
};
