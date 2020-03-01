#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class typeTernary_t : public kaitai::kstruct {

public:
    class dummy_t;

    typeTernary_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, typeTernary_t* p__root = nullptr);

private:
    void _read();

public:
    ~typeTernary_t();

    class dummy_t : public kaitai::kstruct {

    public:

        dummy_t(kaitai::kstream* p__io, typeTernary_t* p__parent = nullptr, typeTernary_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~dummy_t();

    private:
        uint8_t m_value;
        typeTernary_t* m__root;
        typeTernary_t* m__parent;

    public:
        uint8_t value() const { return m_value; }
        typeTernary_t* _root() const { return m__root; }
        typeTernary_t* _parent() const { return m__parent; }
    };

private:
    bool f_is_hack;
    bool m_is_hack;

public:
    bool is_hack();

private:
    bool f_dif;
    dummy_t* m_dif;

public:
    dummy_t* dif();

private:
    bool f_dif_value;
    uint8_t m_dif_value;

public:
    uint8_t dif_value();

private:
    std::unique_ptr<dummy_t> m_dif_wo_hack;
    bool n_dif_wo_hack;

public:
    bool _is_null_dif_wo_hack() { dif_wo_hack(); return n_dif_wo_hack; };

private:
    std::unique_ptr<dummy_t> m_dif_with_hack;
    typeTernary_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_dif_wo_hack;
    bool n__raw_dif_wo_hack;

public:
    bool _is_null__raw_dif_wo_hack() { _raw_dif_wo_hack(); return n__raw_dif_wo_hack; };

private:
    kaitai::kstream* m__io__raw_dif_wo_hack;
    std::string m__raw_dif_with_hack;
    kaitai::kstream* m__io__raw_dif_with_hack;
    std::string m__raw__raw_dif_with_hack;

public:
    dummy_t* dif_wo_hack() const { return m_dif_wo_hack.get(); }
    dummy_t* dif_with_hack() const { return m_dif_with_hack.get(); }
    typeTernary_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_dif_wo_hack() const { return m__raw_dif_wo_hack; }
    kaitai::kstream* _io__raw_dif_wo_hack() const { return m__io__raw_dif_wo_hack; }
    std::string _raw_dif_with_hack() const { return m__raw_dif_with_hack; }
    kaitai::kstream* _io__raw_dif_with_hack() const { return m__io__raw_dif_with_hack; }
    std::string _raw__raw_dif_with_hack() const { return m__raw__raw_dif_with_hack; }
};
