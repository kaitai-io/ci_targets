#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class expr_array_t : public kaitai::kstruct {

public:

    expr_array_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, expr_array_t* p__root = nullptr);

private:
    void _read();

public:

private:
    void _clean_up();

public:
    ~expr_array_t();

private:
    bool f_aint_first;
    uint32_t m_aint_first;

public:
    uint32_t aint_first();

private:
    bool f_afloat_size;
    int32_t m_afloat_size;

public:
    int32_t afloat_size();

private:
    bool f_astr_size;
    int32_t m_astr_size;

public:
    int32_t astr_size();

private:
    bool f_aint_min;
    uint32_t m_aint_min;

public:
    uint32_t aint_min();

private:
    bool f_afloat_min;
    double m_afloat_min;

public:
    double afloat_min();

private:
    bool f_aint_size;
    int32_t m_aint_size;

public:
    int32_t aint_size();

private:
    bool f_aint_last;
    uint32_t m_aint_last;

public:
    uint32_t aint_last();

private:
    bool f_afloat_last;
    double m_afloat_last;

public:
    double afloat_last();

private:
    bool f_astr_first;
    std::string m_astr_first;

public:
    std::string astr_first();

private:
    bool f_astr_last;
    std::string m_astr_last;

public:
    std::string astr_last();

private:
    bool f_aint_max;
    uint32_t m_aint_max;

public:
    uint32_t aint_max();

private:
    bool f_afloat_first;
    double m_afloat_first;

public:
    double afloat_first();

private:
    bool f_astr_min;
    std::string m_astr_min;

public:
    std::string astr_min();

private:
    bool f_astr_max;
    std::string m_astr_max;

public:
    std::string astr_max();

private:
    bool f_afloat_max;
    double m_afloat_max;

public:
    double afloat_max();

private:
    std::unique_ptr<std::vector<uint32_t>> m_aint;
    std::unique_ptr<std::vector<double>> m_afloat;
    std::unique_ptr<std::vector<std::string>> m_astr;
    expr_array_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<uint32_t>* aint() const { return m_aint.get(); }
    std::vector<double>* afloat() const { return m_afloat.get(); }
    std::vector<std::string>* astr() const { return m_astr.get(); }
    expr_array_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
