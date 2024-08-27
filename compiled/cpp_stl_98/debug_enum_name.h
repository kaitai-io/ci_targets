#ifndef DEBUG_ENUM_NAME_H_
#define DEBUG_ENUM_NAME_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class debug_enum_name_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <set>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class debug_enum_name_t : public kaitai::kstruct {

public:
    class test_subtype_t;

    enum test_enum1_t {
        TEST_ENUM1_ENUM_VALUE_80 = 80
    };
    static bool _is_defined_test_enum1_t(test_enum1_t v);

private:
    static const std::set<test_enum1_t> _values_test_enum1_t;
    static std::set<test_enum1_t> _build_values_test_enum1_t();

public:

    enum test_enum2_t {
        TEST_ENUM2_ENUM_VALUE_65 = 65
    };
    static bool _is_defined_test_enum2_t(test_enum2_t v);

private:
    static const std::set<test_enum2_t> _values_test_enum2_t;
    static std::set<test_enum2_t> _build_values_test_enum2_t();

public:

    debug_enum_name_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, debug_enum_name_t* p__root = 0);
    void _read();

private:
    void _clean_up();

public:
    ~debug_enum_name_t();

    class test_subtype_t : public kaitai::kstruct {

    public:

        enum inner_enum1_t {
            INNER_ENUM1_ENUM_VALUE_67 = 67
        };
        static bool _is_defined_inner_enum1_t(inner_enum1_t v);

    private:
        static const std::set<inner_enum1_t> _values_inner_enum1_t;
        static std::set<inner_enum1_t> _build_values_inner_enum1_t();

    public:

        enum inner_enum2_t {
            INNER_ENUM2_ENUM_VALUE_11 = 11
        };
        static bool _is_defined_inner_enum2_t(inner_enum2_t v);

    private:
        static const std::set<inner_enum2_t> _values_inner_enum2_t;
        static std::set<inner_enum2_t> _build_values_inner_enum2_t();

    public:

        test_subtype_t(kaitai::kstream* p__io, debug_enum_name_t* p__parent = 0, debug_enum_name_t* p__root = 0);
        void _read();

    private:
        void _clean_up();

    public:
        ~test_subtype_t();

    private:
        bool f_instance_field;
        inner_enum2_t m_instance_field;

    public:
        inner_enum2_t instance_field();

    private:
        inner_enum1_t m_field1;
        uint8_t m_field2;
        debug_enum_name_t* m__root;
        debug_enum_name_t* m__parent;

    public:
        inner_enum1_t field1() const { return m_field1; }
        uint8_t field2() const { return m_field2; }
        debug_enum_name_t* _root() const { return m__root; }
        debug_enum_name_t* _parent() const { return m__parent; }
    };

private:
    test_enum1_t m_one;
    std::vector<test_enum2_t>* m_array_of_ints;
    test_subtype_t* m_test_type;
    debug_enum_name_t* m__root;
    kaitai::kstruct* m__parent;

public:
    test_enum1_t one() const { return m_one; }
    std::vector<test_enum2_t>* array_of_ints() const { return m_array_of_ints; }
    test_subtype_t* test_type() const { return m_test_type; }
    debug_enum_name_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // DEBUG_ENUM_NAME_H_
