#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class expr_array_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class expr_array_t : public kaitai::kstruct {

public:

    expr_array_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, expr_array_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~expr_array_t();
    double afloat_first();
    double afloat_last();
    double afloat_max();
    double afloat_min();
    int32_t afloat_size();
    uint32_t aint_first();
    uint32_t aint_last();
    uint32_t aint_max();
    uint32_t aint_min();
    int32_t aint_size();
    std::string astr_first();
    std::string astr_last();
    std::string astr_max();
    std::string astr_min();
    int32_t astr_size();
    std::vector<uint32_t>* aint() const { return m_aint.get(); }
    std::vector<double>* afloat() const { return m_afloat.get(); }
    std::vector<std::string>* astr() const { return m_astr.get(); }
    expr_array_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_afloat_first;
    double m_afloat_first;
    bool f_afloat_last;
    double m_afloat_last;
    bool f_afloat_max;
    double m_afloat_max;
    bool f_afloat_min;
    double m_afloat_min;
    bool f_afloat_size;
    int32_t m_afloat_size;
    bool f_aint_first;
    uint32_t m_aint_first;
    bool f_aint_last;
    uint32_t m_aint_last;
    bool f_aint_max;
    uint32_t m_aint_max;
    bool f_aint_min;
    uint32_t m_aint_min;
    bool f_aint_size;
    int32_t m_aint_size;
    bool f_astr_first;
    std::string m_astr_first;
    bool f_astr_last;
    std::string m_astr_last;
    bool f_astr_max;
    std::string m_astr_max;
    bool f_astr_min;
    std::string m_astr_min;
    bool f_astr_size;
    int32_t m_astr_size;
    std::unique_ptr<std::vector<uint32_t>> m_aint;
    std::unique_ptr<std::vector<double>> m_afloat;
    std::unique_ptr<std::vector<std::string>> m_astr;
    expr_array_t* m__root;
    kaitai::kstruct* m__parent;
};
