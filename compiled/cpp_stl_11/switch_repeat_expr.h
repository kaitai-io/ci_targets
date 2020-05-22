#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class switch_repeat_expr_t : public kaitai::kstruct {

public:
    class one_t;
    class two_t;

    switch_repeat_expr_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, switch_repeat_expr_t* p__root = nullptr);

private:
    void _read();

public:
    ~switch_repeat_expr_t();

    class one_t : public kaitai::kstruct {

    public:

        one_t(kaitai::kstream* p__io, switch_repeat_expr_t* p__parent = nullptr, switch_repeat_expr_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~one_t();

    private:
        std::string m_first;
        switch_repeat_expr_t* m__root;
        switch_repeat_expr_t* m__parent;

    public:
        std::string first() const { return m_first; }
        switch_repeat_expr_t* _root() const { return m__root; }
        virtual switch_repeat_expr_t* _parent() const { return m__parent; }
    };

    class two_t : public kaitai::kstruct {

    public:

        two_t(kaitai::kstream* p__io, switch_repeat_expr_t* p__parent = nullptr, switch_repeat_expr_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~two_t();

    private:
        std::string m_second;
        switch_repeat_expr_t* m__root;
        switch_repeat_expr_t* m__parent;

    public:
        std::string second() const { return m_second; }
        switch_repeat_expr_t* _root() const { return m__root; }
        virtual switch_repeat_expr_t* _parent() const { return m__parent; }
    };

private:
    uint8_t m_code;
    uint32_t m_size;
    std::unique_ptr<std::vector<std::unique_ptr<kaitai::kstruct>>> m_body;
    bool n_body;

public:
    bool _is_null_body() { body(); return n_body; };

private:
    switch_repeat_expr_t* m__root;
    kaitai::kstruct* m__parent;
    std::unique_ptr<std::vector<std::string>> m__raw_body;
    std::unique_ptr<std::vector<kaitai::kstream*>> m__io__raw_body;

public:
    uint8_t code() const { return m_code; }
    uint32_t size() const { return m_size; }
    std::vector<std::unique_ptr<kaitai::kstruct>>* body() const { return m_body.get(); }
    switch_repeat_expr_t* _root() const { return m__root; }
    virtual kaitai::kstruct* _parent() const { return m__parent; }
    std::vector<std::string>* _raw_body() const { return m__raw_body.get(); }
    std::vector<kaitai::kstream*>* _io__raw_body() const { return m__io__raw_body.get(); }
};
