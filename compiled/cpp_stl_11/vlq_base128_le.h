#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class vlq_base128_le_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

/**
 * A variable-length unsigned/signed integer using base128 encoding. 1-byte groups
 * consist of 1-bit flag of continuation and 7-bit value chunk, and are ordered
 * "least significant group first", i.e. in "little-endian" manner.
 * 
 * This particular encoding is specified and used in:
 * 
 * * DWARF debug file format, where it's dubbed "unsigned LEB128" or "ULEB128".
 *   <https://dwarfstd.org/doc/dwarf-2.0.0.pdf> - page 139
 * * Google Protocol Buffers, where it's called "Base 128 Varints".
 *   <https://protobuf.dev/programming-guides/encoding/#varints>
 * * Apache Lucene, where it's called "VInt"
 *   <https://lucene.apache.org/core/3_5_0/fileformats.html#VInt>
 * * Apache Avro uses this as a basis for integer encoding, adding ZigZag on
 *   top of it for signed ints
 *   <https://avro.apache.org/docs/current/spec.html#binary_encode_primitive>
 * 
 * More information on this encoding is available at <https://en.wikipedia.org/wiki/LEB128>
 * 
 * This particular implementation supports serialized values to up 8 bytes long.
 */

class vlq_base128_le_t : public kaitai::kstruct {

public:
    class group_t;

    vlq_base128_le_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, vlq_base128_le_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~vlq_base128_le_t();

    /**
     * One byte group, clearly divided into 7-bit "value" chunk and 1-bit "continuation" flag.
     */

    class group_t : public kaitai::kstruct {

    public:

        group_t(kaitai::kstream* p__io, vlq_base128_le_t* p__parent = nullptr, vlq_base128_le_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~group_t();

    private:
        bool m_has_next;
        uint64_t m_value;
        vlq_base128_le_t* m__root;
        vlq_base128_le_t* m__parent;

    public:

        /**
         * If true, then we have more bytes to read
         */
        bool has_next() const { return m_has_next; }

        /**
         * The 7-bit (base128) numeric value chunk of this group
         */
        uint64_t value() const { return m_value; }
        vlq_base128_le_t* _root() const { return m__root; }
        vlq_base128_le_t* _parent() const { return m__parent; }
    };

private:
    bool f_len;
    int32_t m_len;

public:
    int32_t len();

private:
    bool f_sign_bit;
    uint64_t m_sign_bit;

public:
    uint64_t sign_bit();

private:
    bool f_value;
    uint64_t m_value;

public:

    /**
     * Resulting unsigned value as normal integer
     */
    uint64_t value();

private:
    bool f_value_signed;
    int64_t m_value_signed;

public:

    /**
     * \sa https://graphics.stanford.edu/~seander/bithacks.html#VariableSignExtend Source
     */
    int64_t value_signed();

private:
    std::unique_ptr<std::vector<std::unique_ptr<group_t>>> m_groups;
    vlq_base128_le_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<std::unique_ptr<group_t>>* groups() const { return m_groups.get(); }
    vlq_base128_le_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
