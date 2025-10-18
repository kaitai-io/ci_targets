// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatEosTermStruct : KaitaiStruct
    {
        public static RepeatEosTermStruct FromFile(string fileName)
        {
            return new RepeatEosTermStruct(new KaitaiStream(fileName));
        }

        public RepeatEosTermStruct(KaitaiStream p__io, KaitaiStruct p__parent = null, RepeatEosTermStruct p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            __raw_records = new List<byte[]>();
            _records = new List<BytesWrapper>();
            {
                var i = 0;
                while (!m_io.IsEof) {
                    __raw_records.Add(m_io.ReadBytesTerm(178, true, true, true));
                    var io___raw_records = new KaitaiStream(__raw_records[__raw_records.Count - 1]);
                    _records.Add(new BytesWrapper(io___raw_records, this, m_root));
                    i++;
                }
            }
        }
        public partial class BytesWrapper : KaitaiStruct
        {
            public static BytesWrapper FromFile(string fileName)
            {
                return new BytesWrapper(new KaitaiStream(fileName));
            }

            public BytesWrapper(KaitaiStream p__io, RepeatEosTermStruct p__parent = null, RepeatEosTermStruct p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _value = m_io.ReadBytesFull();
            }
            public byte[] Value { get { return _value; } }
            public RepeatEosTermStruct M_Root { get { return m_root; } }
            public RepeatEosTermStruct M_Parent { get { return m_parent; } }
            private byte[] _value;
            private RepeatEosTermStruct m_root;
            private RepeatEosTermStruct m_parent;
        }
        public List<BytesWrapper> Records { get { return _records; } }
        public RepeatEosTermStruct M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public List<byte[]> M_RawRecords { get { return __raw_records; } }
        private List<BytesWrapper> _records;
        private RepeatEosTermStruct m_root;
        private KaitaiStruct m_parent;
        private List<byte[]> __raw_records;
    }
}
