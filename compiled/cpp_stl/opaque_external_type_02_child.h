#ifndef OPAQUE_EXTERNAL_TYPE_02_CHILD_H_
#define OPAQUE_EXTERNAL_TYPE_02_CHILD_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <kaitai/kaitaistream.h>

#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class opaque_external_type_02_child_t : public kaitai::kstruct {

public:
    class opaque_external_type_02_child_child_t;

    opaque_external_type_02_child_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, opaque_external_type_02_child_t* p__root = 0);

private:
    void _read();

public:
    ~opaque_external_type_02_child_t();

    class opaque_external_type_02_child_child_t : public kaitai::kstruct {

    public:

        opaque_external_type_02_child_child_t(kaitai::kstream* p__io, opaque_external_type_02_child_t* p__parent = 0, opaque_external_type_02_child_t* p__root = 0);

    private:
        void _read();

    public:
        ~opaque_external_type_02_child_child_t();

    private:
        std::string m_s3;
        bool n_s3;

    public:
        bool _is_null_s3() { s3(); return n_s3; };

    private:
        opaque_external_type_02_child_t* m__root;
        opaque_external_type_02_child_t* m__parent;

    public:
        std::string s3() const { return m_s3; }
        opaque_external_type_02_child_t* _root() const { return m__root; }
        opaque_external_type_02_child_t* _parent() const { return m__parent; }
    };

private:
    bool f_some_method;
    bool m_some_method;

public:
    bool some_method();

private:
    std::string m_s1;
    std::string m_s2;
    opaque_external_type_02_child_child_t* m_s3;
    opaque_external_type_02_child_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string s1() const { return m_s1; }
    std::string s2() const { return m_s2; }
    opaque_external_type_02_child_child_t* s3() const { return m_s3; }
    opaque_external_type_02_child_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // OPAQUE_EXTERNAL_TYPE_02_CHILD_H_
