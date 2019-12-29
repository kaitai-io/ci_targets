#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class process_coerce_bytes_t : public kaitai::kstruct {

public:
    class record_t;

    process_coerce_bytes_t(kaitai::kstream* p__io, std::unique_ptr<kaitai::kstruct> p__parent = nullptr, process_coerce_bytes_t* p__root = nullptr);

private:
    void _read();

public:
    ~process_coerce_bytes_t();

    class record_t : public kaitai::kstruct {

    public:

        record_t(kaitai::kstream* p__io, process_coerce_bytes_t* p__parent = nullptr, process_coerce_bytes_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~record_t();

    private:
        bool f_buf;
        std::string m_buf;

    public:
        std::string buf();

    private:
        uint8_t m_flag;
        std::string m_buf_unproc;
        bool n_buf_unproc;

    public:
        bool _is_null_buf_unproc() { buf_unproc(); return n_buf_unproc; };

    private:
        std::string m_buf_proc;
        bool n_buf_proc;

    public:
        bool _is_null_buf_proc() { buf_proc(); return n_buf_proc; };

    private:
        process_coerce_bytes_t* m__root;
        process_coerce_bytes_t* m__parent;
        std::string m__raw_buf_proc;
        bool n__raw_buf_proc;

    public:
        bool _is_null__raw_buf_proc() { _raw_buf_proc(); return n__raw_buf_proc; };

    private:
        kaitai::kstream* m__io_buf_proc;

    public:
        uint8_t flag() const { return m_flag; }
        std::string buf_unproc() const { return m_buf_unproc; }
        std::string buf_proc() const { return m_buf_proc; }
        process_coerce_bytes_t* _root() const { return m__root; }
        process_coerce_bytes_t* _parent() const { return m__parent; }
        std::string _raw_buf_proc() const { return m__raw_buf_proc; }
        kaitai::kstream* _io_buf_proc() const { return m__io_buf_proc; }
    };

private:
    std::unique_ptr<std::vector<std::unique_ptr<record_t>>> m_records;
    process_coerce_bytes_t* m__root;
    std::unique_ptr<kaitai::kstruct> m__parent;

public:
    std::vector<std::unique_ptr<record_t>>* records() const { return m_records.get(); }
    process_coerce_bytes_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent.get(); }
};
