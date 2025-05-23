// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{

    /// <summary>
    /// A variable-length unsigned/signed integer using base128 encoding. 1-byte groups
    /// consist of 1-bit flag of continuation and 7-bit value chunk, and are ordered
    /// &quot;least significant group first&quot;, i.e. in &quot;little-endian&quot; manner.
    /// 
    /// This particular encoding is specified and used in:
    /// 
    /// * DWARF debug file format, where it's dubbed &quot;unsigned LEB128&quot; or &quot;ULEB128&quot;.
    ///   &lt;https://dwarfstd.org/doc/dwarf-2.0.0.pdf&gt; - page 139
    /// * Google Protocol Buffers, where it's called &quot;Base 128 Varints&quot;.
    ///   &lt;https://protobuf.dev/programming-guides/encoding/#varints&gt;
    /// * Apache Lucene, where it's called &quot;VInt&quot;
    ///   &lt;https://lucene.apache.org/core/3_5_0/fileformats.html#VInt&gt;
    /// * Apache Avro uses this as a basis for integer encoding, adding ZigZag on
    ///   top of it for signed ints
    ///   &lt;https://avro.apache.org/docs/current/spec.html#binary_encode_primitive&gt;
    /// 
    /// More information on this encoding is available at &lt;https://en.wikipedia.org/wiki/LEB128&gt;
    /// 
    /// This particular implementation supports serialized values to up 8 bytes long.
    /// </summary>
    public partial class VlqBase128Le : KaitaiStruct
    {
        public static VlqBase128Le FromFile(string fileName)
        {
            return new VlqBase128Le(new KaitaiStream(fileName));
        }

        public VlqBase128Le(KaitaiStream p__io, KaitaiStruct p__parent = null, VlqBase128Le p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_len = false;
            f_signBit = false;
            f_value = false;
            f_valueSigned = false;
            _read();
        }
        private void _read()
        {
            _groups = new List<Group>();
            {
                var i = 0;
                Group M_;
                do {
                    M_ = new Group(m_io, this, m_root);
                    _groups.Add(M_);
                    i++;
                } while (!(!(M_.HasNext)));
            }
        }

        /// <summary>
        /// One byte group, clearly divided into 7-bit &quot;value&quot; chunk and 1-bit &quot;continuation&quot; flag.
        /// </summary>
        public partial class Group : KaitaiStruct
        {
            public static Group FromFile(string fileName)
            {
                return new Group(new KaitaiStream(fileName));
            }

            public Group(KaitaiStream p__io, VlqBase128Le p__parent = null, VlqBase128Le p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _hasNext = m_io.ReadBitsIntBe(1) != 0;
                _value = m_io.ReadBitsIntBe(7);
            }
            private bool _hasNext;
            private ulong _value;
            private VlqBase128Le m_root;
            private VlqBase128Le m_parent;

            /// <summary>
            /// If true, then we have more bytes to read
            /// </summary>
            public bool HasNext { get { return _hasNext; } }

            /// <summary>
            /// The 7-bit (base128) numeric value chunk of this group
            /// </summary>
            public ulong Value { get { return _value; } }
            public VlqBase128Le M_Root { get { return m_root; } }
            public VlqBase128Le M_Parent { get { return m_parent; } }
        }
        private bool f_len;
        private int _len;
        public int Len
        {
            get
            {
                if (f_len)
                    return _len;
                f_len = true;
                _len = (int) (Groups.Count);
                return _len;
            }
        }
        private bool f_signBit;
        private ulong _signBit;
        public ulong SignBit
        {
            get
            {
                if (f_signBit)
                    return _signBit;
                f_signBit = true;
                _signBit = (ulong) (((ulong) (((ulong) (1)) << 7 * Len - 1)));
                return _signBit;
            }
        }
        private bool f_value;
        private ulong _value;

        /// <summary>
        /// Resulting unsigned value as normal integer
        /// </summary>
        public ulong Value
        {
            get
            {
                if (f_value)
                    return _value;
                f_value = true;
                _value = (ulong) (((ulong) (((((((Groups[0].Value + (Len >= 2 ? Groups[1].Value << 7 : 0)) + (Len >= 3 ? Groups[2].Value << 14 : 0)) + (Len >= 4 ? Groups[3].Value << 21 : 0)) + (Len >= 5 ? Groups[4].Value << 28 : 0)) + (Len >= 6 ? Groups[5].Value << 35 : 0)) + (Len >= 7 ? Groups[6].Value << 42 : 0)) + (Len >= 8 ? Groups[7].Value << 49 : 0))));
                return _value;
            }
        }
        private bool f_valueSigned;
        private long _valueSigned;

        /// <remarks>
        /// Reference: <a href="https://graphics.stanford.edu/~seander/bithacks.html#VariableSignExtend">Source</a>
        /// </remarks>
        public long ValueSigned
        {
            get
            {
                if (f_valueSigned)
                    return _valueSigned;
                f_valueSigned = true;
                _valueSigned = (long) (((long) (((long) (Value ^ SignBit)) - ((long) (SignBit)))));
                return _valueSigned;
            }
        }
        private List<Group> _groups;
        private VlqBase128Le m_root;
        private KaitaiStruct m_parent;
        public List<Group> Groups { get { return _groups; } }
        public VlqBase128Le M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
