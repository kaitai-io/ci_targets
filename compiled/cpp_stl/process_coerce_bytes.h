#ifndef PROCESS_COERCE_BYTES_H_
#define PROCESS_COERCE_BYTES_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"

#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class process_coerce_bytes_t : public kaitai::kstruct {

public:
    class record_t;

    process_coerce_bytes_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, process_coerce_bytes_t* p__root = 0);

private:
    void _read();

public:
    ~process_coerce_bytes_t();

    class record_t : public kaitai::kstruct {

    public:

        record_t(kaitai::kstream* p__io, process_coerce_bytes_t* p__parent = 0, process_coerce_bytes_t* p__root = 0);

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
        kaitai::kstream* m__io_buf_unproc;
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
        kaitai::kstream* _io_buf_unproc() const { return m__io_buf_unproc; }
        std::string _raw_buf_proc() const { return m__raw_buf_proc; }
        kaitai::kstream* _io_buf_proc() const { return m__io_buf_proc; }
    };

private:
    std::vector<record_t*>* m_records;
    process_coerce_bytes_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<record_t*>* records() const { return m_records; }
    process_coerce_bytes_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // PROCESS_COERCE_BYTES_H_
