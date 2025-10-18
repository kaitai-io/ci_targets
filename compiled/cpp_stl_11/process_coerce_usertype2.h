#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class process_coerce_usertype2_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class process_coerce_usertype2_t : public kaitai::kstruct {

public:
    class foo_t;
    class record_t;

    process_coerce_usertype2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, process_coerce_usertype2_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~process_coerce_usertype2_t();

    class foo_t : public kaitai::kstruct {

    public:

        foo_t(kaitai::kstream* p__io, process_coerce_usertype2_t::record_t* p__parent = nullptr, process_coerce_usertype2_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~foo_t();
        uint32_t value() const { return m_value; }
        process_coerce_usertype2_t* _root() const { return m__root; }
        process_coerce_usertype2_t::record_t* _parent() const { return m__parent; }

    private:
        uint32_t m_value;
        process_coerce_usertype2_t* m__root;
        process_coerce_usertype2_t::record_t* m__parent;
    };

    class record_t : public kaitai::kstruct {

    public:

        record_t(kaitai::kstream* p__io, process_coerce_usertype2_t* p__parent = nullptr, process_coerce_usertype2_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~record_t();
        foo_t* buf();
        uint8_t flag() const { return m_flag; }
        foo_t* buf_unproc() const { return m_buf_unproc.get(); }
        foo_t* buf_proc() const { return m_buf_proc.get(); }
        process_coerce_usertype2_t* _root() const { return m__root; }
        process_coerce_usertype2_t* _parent() const { return m__parent; }
        std::string _raw_buf_proc() const { return m__raw_buf_proc; }
        kaitai::kstream* _io__raw_buf_proc() const { return m__io__raw_buf_proc.get(); }
        std::string _raw__raw_buf_proc() const { return m__raw__raw_buf_proc; }

    private:
        bool f_buf;
        foo_t* m_buf;
        uint8_t m_flag;
        std::unique_ptr<foo_t> m_buf_unproc;
        bool n_buf_unproc;

    public:
        bool _is_null_buf_unproc() { buf_unproc(); return n_buf_unproc; };

    private:
        std::unique_ptr<foo_t> m_buf_proc;
        bool n_buf_proc;

    public:
        bool _is_null_buf_proc() { buf_proc(); return n_buf_proc; };

    private:
        process_coerce_usertype2_t* m__root;
        process_coerce_usertype2_t* m__parent;
        std::string m__raw_buf_proc;
        bool n__raw_buf_proc;

    public:
        bool _is_null__raw_buf_proc() { _raw_buf_proc(); return n__raw_buf_proc; };

    private:
        std::unique_ptr<kaitai::kstream> m__io__raw_buf_proc;
        std::string m__raw__raw_buf_proc;
        bool n__raw__raw_buf_proc;

    public:
        bool _is_null__raw__raw_buf_proc() { _raw__raw_buf_proc(); return n__raw__raw_buf_proc; };

    private:
    };

public:
    std::vector<std::unique_ptr<record_t>>* records() const { return m_records.get(); }
    process_coerce_usertype2_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    std::unique_ptr<std::vector<std::unique_ptr<record_t>>> m_records;
    process_coerce_usertype2_t* m__root;
    kaitai::kstruct* m__parent;
};
