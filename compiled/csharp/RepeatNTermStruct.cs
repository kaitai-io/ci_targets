// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatNTermStruct : KaitaiStruct
    {
        public static RepeatNTermStruct FromFile(string fileName)
        {
            return new RepeatNTermStruct(new KaitaiStream(fileName));
        }

        public RepeatNTermStruct(KaitaiStream p__io, KaitaiStruct p__parent = null, RepeatNTermStruct p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            __raw_records1 = new List<byte[]>();
            _records1 = new List<BytesWrapper>();
            for (var i = 0; i < 2; i++)
            {
                __raw_records1.Add(m_io.ReadBytesTerm(170, false, true, true));
                var io___raw_records1 = new KaitaiStream(__raw_records1[__raw_records1.Count - 1]);
                _records1.Add(new BytesWrapper(io___raw_records1, this, m_root));
            }
            __raw_records2 = new List<byte[]>();
            _records2 = new List<BytesWrapper>();
            for (var i = 0; i < 2; i++)
            {
                __raw_records2.Add(m_io.ReadBytesTerm(170, true, true, true));
                var io___raw_records2 = new KaitaiStream(__raw_records2[__raw_records2.Count - 1]);
                _records2.Add(new BytesWrapper(io___raw_records2, this, m_root));
            }
            __raw_records3 = new List<byte[]>();
            _records3 = new List<BytesWrapper>();
            for (var i = 0; i < 2; i++)
            {
                __raw_records3.Add(m_io.ReadBytesTerm(85, false, false, true));
                var io___raw_records3 = new KaitaiStream(__raw_records3[__raw_records3.Count - 1]);
                _records3.Add(new BytesWrapper(io___raw_records3, this, m_root));
            }
        }
        public partial class BytesWrapper : KaitaiStruct
        {
            public static BytesWrapper FromFile(string fileName)
            {
                return new BytesWrapper(new KaitaiStream(fileName));
            }

            public BytesWrapper(KaitaiStream p__io, RepeatNTermStruct p__parent = null, RepeatNTermStruct p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _value = m_io.ReadBytesFull();
            }
            private byte[] _value;
            private RepeatNTermStruct m_root;
            private RepeatNTermStruct m_parent;
            public byte[] Value { get { return _value; } }
            public RepeatNTermStruct M_Root { get { return m_root; } }
            public RepeatNTermStruct M_Parent { get { return m_parent; } }
        }
        private List<BytesWrapper> _records1;
        private List<BytesWrapper> _records2;
        private List<BytesWrapper> _records3;
        private RepeatNTermStruct m_root;
        private KaitaiStruct m_parent;
        private List<byte[]> __raw_records1;
        private List<byte[]> __raw_records2;
        private List<byte[]> __raw_records3;
        public List<BytesWrapper> Records1 { get { return _records1; } }
        public List<BytesWrapper> Records2 { get { return _records2; } }
        public List<BytesWrapper> Records3 { get { return _records3; } }
        public RepeatNTermStruct M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public List<byte[]> M_RawRecords1 { get { return __raw_records1; } }
        public List<byte[]> M_RawRecords2 { get { return __raw_records2; } }
        public List<byte[]> M_RawRecords3 { get { return __raw_records3; } }
    }
}
