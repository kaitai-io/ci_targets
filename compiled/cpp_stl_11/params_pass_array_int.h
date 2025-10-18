#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class params_pass_array_int_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class params_pass_array_int_t : public kaitai::kstruct {

public:
    class wants_ints_t;

    params_pass_array_int_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, params_pass_array_int_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~params_pass_array_int_t();

    class wants_ints_t : public kaitai::kstruct {

    public:

        wants_ints_t(std::vector<uint16_t>* p_nums, kaitai::kstream* p__io, params_pass_array_int_t* p__parent = nullptr, params_pass_array_int_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~wants_ints_t();
        std::vector<uint16_t>* nums() const { return m_nums; }
        params_pass_array_int_t* _root() const { return m__root; }
        params_pass_array_int_t* _parent() const { return m__parent; }

    private:
        std::vector<uint16_t>* m_nums;
        params_pass_array_int_t* m__root;
        params_pass_array_int_t* m__parent;
    };

public:
    std::vector<uint16_t>* ints_calc();
    std::vector<uint16_t>* ints() const { return m_ints.get(); }
    wants_ints_t* pass_ints() const { return m_pass_ints.get(); }
    wants_ints_t* pass_ints_calc() const { return m_pass_ints_calc.get(); }
    params_pass_array_int_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_ints_calc;
    std::unique_ptr<std::vector<uint16_t>> m_ints_calc;
    std::unique_ptr<std::vector<uint16_t>> m_ints;
    std::unique_ptr<wants_ints_t> m_pass_ints;
    std::unique_ptr<wants_ints_t> m_pass_ints_calc;
    params_pass_array_int_t* m__root;
    kaitai::kstruct* m__parent;
};
